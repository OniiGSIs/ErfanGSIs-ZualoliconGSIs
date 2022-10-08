#!/bin/bash

# Project OEM-GSI Porter by Erfan Abdi <erfangplus@gmail.com>

PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
TOOLS_DIR="$PROJECT_DIR/tools"
PARTITIONS="system vendor cust odm oem factory product xrom systemex system_ext reserve india"

AB=true
AONLY=false
MOUNTED=false
DYNAMIC=false
CLEAN=true

usage()
{
    echo "Usage: [--help|-h|-?] [--ab|-b] [--aonly|-a] [--cleanup|-c] [--merge|-m] [--no-vndks|-nv] [--gapps|-g] $0 <Firmware link> <Firmware type> [Other args]"
    echo -e "\tFirmware link: Firmware download link or local path"
    echo -e "\tFirmware type: Firmware mode"
    echo -e "\t--ab: Build only AB"
    echo -e "\t--aonly: Build only A-Only"
    echo -e "\t--cleanup: Cleanup downloaded firmware"
    echo -e "\t--help: To show this info"
}

POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    --ab|-b)
    AONLY=false
    AB=true
    shift
    ;;
    --aonly|-a)
    AONLY=true
    AB=false
    shift
    ;;
    --cleanup|-c)
    CLEAN=true
    shift
    ;;
    --merge | -dynamic)
    MERGE=true
    shift
    ;;
    --help|-h|-?)
    usage
    exit
    ;;
    *)
    POSITIONAL+=("$1")
    shift
    ;;
esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters

if [[ ! -n $2 ]]; then
    echo "ERROR: Enter all needed parameters"
    usage
    exit
fi

URL=$1
shift
SRCTYPE=$1
shift

ORIGINAL_URL=$URL

if [[ $SRCTYPE == *":"* ]]; then
    SRCTYPENAME=`echo "$SRCTYPE" | cut -d ":" -f 2`
else
    SRCTYPENAME=$SRCTYPE
fi

DOWNLOAD()
{
    URL="$1"
    ZIP_NAME="$2"
    echo "-> Downloading firmware to: $ZIP_NAME"
    if echo "${URL}" | grep -q "mega.nz\|mediafire.com\|drive.google.com"; then
        ("${DL}" "${URL}" "$PROJECT_DIR/input" "$ACTUAL_ZIP_NAME") || exit 1
    else
        if echo "${URL}" | grep -q "1drv.ms"; then URL=${URL/ms/ws}; fi
        { type -p aria2c > /dev/null 2>&1 && aria2c -x16 -j$(nproc) -U "Mozilla/5.0" -d "$PROJECT_DIR/input" -o "$ACTUAL_ZIP_NAME" ${URL} > /dev/null 2>&1; } || { wget -U "Mozilla/5.0" ${URL} -O "$PROJECT_DIR/input/$ACTUAL_ZIP_NAME" > /dev/null 2>&1 || exit 1; }
        aria2c -x16 -j$(nproc) -U "Mozilla/5.0" -d "$PROJECT_DIR/input" -o "$ACTUAL_ZIP_NAME" ${URL} > /dev/null 2>&1 || {
            wget -U "Mozilla/5.0" ${URL} -O "$PROJECT_DIR/input/$ACTUAL_ZIP_NAME" > /dev/null 2>&1 || exit 1
        }
    fi
}


MOUNT()
{
    for p in $PARTITIONS; do
        if [[ -e "$1/$p.img" ]]; then
            mkdir -p "$1/$p"
            printf "$p " >> "$1/mounted.txt"
            if [ $(uname) == Linux ]; then
                sudo mount -o ro "$1/$p.img" "$1/$p"
            elif [ $(uname) == Darwin ]; then
                fuse-ext2 "$1/$p.img" "$1/$p"
            fi
        fi
    done
}

UMOUNT()
{
    for p in $PARTITIONS; do
        if [[ -e "$1/$p.img" ]]; then
            sudo umount "$1/$p"
        fi
    done
}

LEAVE()
{
    UMOUNT "$PROJECT_DIR/working"
    rm -rf "$PROJECT_DIR/working"
    exit 1
}

echo "Updating tools..."
"$PROJECT_DIR"/update.sh

# Create input & working directory if it does not exist
mkdir -p "$PROJECT_DIR/input" "$PROJECT_DIR/working" "$PROJECT_DIR/output"

if [[ -d "$URL" ]]; then
    MOUNTED=true
fi

ZIP_NAME="$PROJECT_DIR/input/dummy"
if [ $MOUNTED == false ]; then
    if [[ "$URL" == "http"* ]]; then
        # URL detected
        RANDOMM=$(echo $RANDOM)
        ACTUAL_ZIP_NAME="$RANDOMM"_FIRMWARE.tgz
        ZIP_NAME="$PROJECT_DIR"/input/"$RANDOMM"_FIRMWARE.tgz
        DOWNLOAD "$URL" "$ZIP_NAME"
        URL="$ZIP_NAME"
    fi
     if [ "$MERGE" == true ]; then
       "$PROJECT_DIR"/scripts/merger.sh "$URL" || exit 1
    elif [ $MERGE == false ] ; then
     $TOOLS_DIR/Firmware_extractor/extractor.sh "$URL" "$PROJECT_DIR/working" || exit 1
     export FIRMWARE_PATH=$URL
     MOUNT "$PROJECT_DIR/working"
    fi
    if [ $CLEAN == true ]; then
        rm -rf "$ZIP_NAME"
    fi
    URL="$PROJECT_DIR/working"
fi

if [ $AB == true ]; then
   "$PROJECT_DIR"/make.sh "${URL}" "${SRCTYPE}" AB "$PROJECT_DIR/output" ${@} || LEAVE
fi

if [ $AONLY == true ]; then
    "$PROJECT_DIR"/make.sh "${URL}" "${SRCTYPE}" Aonly "$PROJECT_DIR/output" ${@} || LEAVE
fi

echo "Porting ${SRCTYPENAME} GSI done on: $PROJECT_DIR/output"

if [[ -f "$PROJECT_DIR/private_utils.sh" ]]; then
    . "$PROJECT_DIR/private_utils.sh"
    UPLOAD "$PROJECT_DIR/output" ${SRCTYPENAME} ${AB} ${AONLY} "${ORIGINAL_URL}"
fi

DEBUG=false
if [ $DEBUG == true ]; then
echo "AONLY = ${AONLY}"
echo "AB = ${AB}"
echo "MOUNTED = ${MOUNTED}"
echo "URL = ${URL}"
echo "SRCTYPE = ${SRCTYPE}"
echo "SRCTYPENAME = ${SRCTYPENAME}"
echo "OTHER = ${@}"
echo "ZIP_NAME = ${ZIP_NAME}"
fi


echo "Unmounting Stuff for Next Builds"
UMOUNT "$PROJECT_DIR/working"
rm -rf "$PROJECT_DIR/working"
