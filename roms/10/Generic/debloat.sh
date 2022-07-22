#!/bin/bash

systempath=$1
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

rm -rf $1/product/app/CalendarGooglePrebuilt
rm -rf $1/product/app/CalculatorGooglePrebuilt
rm -rf $1/product/app/Chrome
rm -rf $1/product/app/Chrome-Stub
rm -rf $1/product/app/DevicePolicyPrebuilt
rm -rf $1/product/app/DiagnosticsToolPrebuilt
rm -rf $1/product/app/Drive
rm -rf $1/product/app/GoogleCamera
rm -rf $1/product/app/Photos
rm -rf $1/product/app/MarkupGoogle
rm -rf $1/product/app/MicropaperPrebuilt
rm -rf $1/product/app/ModuleMetadataGoogle
rm -rf $1/product/app/Maps
rm -rf $1/product/app/PrebuiltGmail
rm -rf $1/product/app/SoundAmplifierPrebuilt
rm -rf $1/product/app/TrichromeLibrary
rm -rf $1/product/app/TrichromeLibrary-Stub
rm -rf $1/product/app/Tycho
rm -rf $1/product/app/talkback
rm -rf $1/product/app/arcore
rm -rf $1/product/app/YouTubeMusicPrebuilt
rm -rf $1/product/app/YouTube
rm -rf $1/product/app/Videos
rm -rf $1/product/priv-app/AmbientSensePrebuilt
rm -rf $1/product/priv-app/AndroidAutoStubPrebuilt
rm -rf $1/product/priv-app/AndroidMigratePrebuilt
rm -rf $1/product/priv-app/CarrierServices
rm -rf $1/product/priv-app/HelpRtcPrebuilt
rm -rf $1/product/priv-app/HotwordEnrollmentXGoogleRT5514P
rm -rf $1/product/priv-app/HotwordEnrollmentOKGoogleRT5514P
rm -rf $1/product/priv-app/MaestroPrebuilt
rm -rf $1/product/priv-app/MyVerizonServices
rm -rf $1/product/priv-app/ScribePrebuilt
rm -rf $1/product/priv-app/SafetyHubPrebuilt
rm -rf $1/product/priv-app/RecorderPrebuilt
rm -rf $1/product/priv-app/TurboPrebuilt
rm -rf $1/product/priv-app/TipsPrebuilt
rm -rf $1/product/priv-app/Velvet
rm -rf $1/tts
rm -rf $1/addon.d/30*
rm -rf $1/addon.d/69*
rm -rf $1/addon.d/70*
rm -rf $1/addon.d/71*
rm -rf $1/addon.d/74*
rm -rf $1/addon.d/75*
rm -rf $1/addon.d/78*
rm -rf $1/addon.d/90*
rm -rf $1/app/AndroidAuto*
rm -rf $1/app/arcore
rm -rf $1/app/Books*
rm -rf $1/app/CalculatorGoogle*
rm -rf $1/app/CalendarGoogle*
rm -rf $1/app/CarHomeGoogle
rm -rf $1/app/CloudPrint*
rm -rf $1/app/DevicePersonalizationServices
rm -rf $1/app/DMAgent
rm -rf $1/app/Drive
rm -rf $1/app/Duo
rm -rf $1/app/EditorsDocs
rm -rf $1/app/Editorssheets
rm -rf $1/app/EditorsSlides
rm -rf $1/app/ExchangeServices
rm -rf $1/app/FaceLock
rm -rf $1/app/Fitness*
rm -rf $1/app/GalleryGo*
rm -rf $1/app/Gcam*
rm -rf $1/app/GCam*
rm -rf $1/app/Gmail*
rm -rf $1/app/GMail*
rm -rf $1/app/GoogleCamera*
rm -rf $1/app/GoogleCalculator*
rm -rf $1/app/GoogleCalendar*
rm -rf $1/app/GoogleCalendarSyncAdapter
rm -rf $1/app/GoogleContacts
rm -rf $1/app/GoogleContactsSyncAdapter
rm -rf $1/app/GoogleCloudPrint
rm -rf $1/app/GoogleEarth
rm -rf $1/app/GoogleExtshared*
rm -rf $1/app/GoogleExtShared*
rm -rf $1/app/GoogleGo*
rm -rf $1/app/GoogleHome*
rm -rf $1/app/GoogleHindiIME*
rm -rf $1/app/GoogleKeep*
rm -rf $1/app/GoogleJapaneseInput*
rm -rf $1/app/GoogleLocationHistory*
rm -rf $1/app/GoogleLoginService*
rm -rf $1/app/GoogleMusic*
rm -rf $1/app/GoogleNow*
rm -rf $1/app/GooglePhotos*
rm -rf $1/app/GooglePinyinIME*
rm -rf $1/app/GooglePlus
rm -rf $1/app/GoogleTTS*
rm -rf $1/app/GoogleVrCore*
rm -rf $1/app/GoogleZhuyinIME*
rm -rf $1/app/Hangouts
rm -rf $1/app/KoreanIME*
rm -rf $1/app/LocationHistory*
rm -rf $1/app/Maps*
rm -rf $1/app/Markup*
rm -rf $1/app/MicropaperPrebuilt
rm -rf $1/app/Music2*
rm -rf $1/app/NavGo
rm -rf $1/app/Newsstand
rm -rf $1/app/NexusWallpapers*
rm -rf $1/app/Ornament
rm -rf $1/app/Photos*
rm -rf $1/app/PicoTts
rm -rf $1/app/PixelSetupWizard*
rm -rf $1/app/PlayAutoInstallConfig*
rm -rf $1/app/PlayGames*
rm -rf $1/app/PrebuiltBugle
rm -rf $1/app/PrebuiltDeskClockGoogle
rm -rf $1/app/PrebuiltExchange3Google
rm -rf $1/app/PrebuiltGmail
rm -rf $1/app/PrebuiltKeep
rm -rf $1/app/SoundAmplifierPrebuilt
rm -rf $1/app/Street
rm -rf $1/app/Stickers*
rm -rf $1/app/TalkBack
rm -rf $1/app/talkBack
rm -rf $1/app/talkback
rm -rf $1/app/TranslatePrebuilt
rm -rf $1/app/Turbo
rm -rf $1/app/Tycho
rm -rf $1/app/Videos
rm -rf $1/app/Wallet
rm -rf $1/app/WallpapersBReel*
rm -rf $1/app/YouTube*
rm -rf $1/etc/permissions/privapp-permissions-google_prebuilt.xml
rm -rf $1/etc/permissions/privapp-permissions-elgoog.xml
rm -rf $1/etc/sysconfig/pixel_2017_exclusive.xml
rm -rf $1/etc/sysconfig/pixel_experience_2017.xml
rm -rf $1/etc/sysconfig/gmsexpress.xml
rm -rf $1/etc/sysconfig/googledialergo-sysconfig.xml
rm -rf $1/etc/sysconfig/google-hiddenapi-package-whitelist.xml
rm -rf $1/etc/sysconfig/google.xml
rm -rf $1/etc/sysconfig/google_build.xml
rm -rf $1/etc/sysconfig/google_experience.xml
rm -rf $1/etc/sysconfig/google_exclusives_enable.xml
rm -rf $1/etc/sysconfig/go_experience.xml
rm -rf $1/etc/sysconfig/nexus.xml
rm -rf $1/etc/sysconfig/nga.xml
rm -rf $1/etc/sysconfig/pixel*
rm -rf $1/etc/sysconfig/turbo.xml
rm -rf $1/etc/sysconfig/wellbeing.xml
rm -rf $1/framework/com.google.android.camera*
rm -rf $1/framework/com.google.android.dialer*
rm -rf $1/framework/com.google.android.maps*
rm -rf $1/framework/oat/arm/com.google.android.camera*
rm -rf $1/framework/oat/arm/com.google.android.dialer*
rm -rf $1/framework/oat/arm/com.google.android.maps*
rm -rf $1/framework/oat/arm64/com.google.android.camera*
rm -rf $1/framework/oat/arm64/com.google.android.dialer*
rm -rf $1/framework/oat/arm64/com.google.android.maps*
rm -rf $1/lib/libaiai-annotators.so
rm -rf $1/lib/libcronet.70.0.3522.0.so
rm -rf $1/lib/libfilterpack_facedetect.so
rm -rf $1/lib/libfrsdk.so
rm -rf $1/lib/libgcam.so
rm -rf $1/lib/libgcam_swig_jni.so
rm -rf $1/lib/libocr.so
rm -rf $1/lib/libparticle-extractor_jni.so
rm -rf $1/lib64/libbarhopper.so
rm -rf $1/lib64/libfacenet.so
rm -rf $1/lib64/libfilterpack_facedetect.so
rm -rf $1/lib64/libfrsdk.so
rm -rf $1/lib64/libgcam.so
rm -rf $1/lib64/libgcam_swig_jni.so
rm -rf $1/lib64/libsketchology_native.so
rm -rf $1/app/GoogleConfigOverlay*
rm -rf $1/app/PixelConfigOverlay*
rm -rf $1/app/Gms*
rm -rf $1/priv-app/Aiai*
rm -rf $1/priv-app/AmbientSense*
rm -rf $1/priv-app/AndroidAuto*
rm -rf $1/priv-app/AndroidMigrate*
rm -rf $1/priv-app/AndroidPlatformServices
rm -rf $1/priv-app/CalendarGoogle*
rm -rf $1/priv-app/CalculatorGoogle*
rm -rf $1/priv-app/AssistantGo
rm -rf $1/priv-app/CarrierServices
rm -rf $1/priv-app/CarrierSetup
rm -rf $1/priv-app/ConfigUpdater
rm -rf $1/priv-app/DataTransferTool
rm -rf $1/priv-app/DeviceHealthServices
rm -rf $1/priv-app/DevicePersonalizationServices
rm -rf $1/priv-app/DigitalWellbeing*
rm -rf $1/priv-app/FaceLock
rm -rf $1/priv-app/Gcam*
rm -rf $1/priv-app/GCam*
rm -rf $1/priv-app/GCS
rm -rf $1/priv-app/GmsCore*
rm -rf $1/priv-app/GoogleAssistant
rm -rf $1/priv-app/GoogleBackupTransport
rm -rf $1/priv-app/GoogleCalculator*
rm -rf $1/priv-app/GoogleCalendar*
rm -rf $1/priv-app/GoogleCamera*
rm -rf $1/priv-app/GoogleContacts
rm -rf $1/priv-app/GoogleDialer
rm -rf $1/priv-app/GoogleExtservices*
rm -rf $1/priv-app/GoogleExtServices*
rm -rf $1/priv-app/GoogleFeedback
rm -rf $1/priv-app/GoogleOneTimeInitializer
rm -rf $1/priv-app/GooglePartnerSetup
rm -rf $1/priv-app/GoogleRestore
rm -rf $1/priv-app/GoogleSearchGo
rm -rf $1/priv-app/GoogleServicesFramework
rm -rf $1/priv-app/GoogleSpeechServices
rm -rf $1/priv-app/HotwordEnrollment*
rm -rf $1/priv-app/HotWordEnrollment*
rm -rf $1/priv-app/MaestroPrebuilt
rm -rf $1/priv-app/matchmaker*
rm -rf $1/priv-app/Matchmaker*
rm -rf $1/priv-app/Phonesky
rm -rf $1/priv-app/PixelLive*
rm -rf $1/priv-app/PrebuiltGmsCore*
rm -rf $1/priv-app/PixelSetupWizard*
rm -rf $1/priv-app/SCONE
rm -rf $1/priv-app/Scribe*
rm -rf $1/priv-app/SetupWizard*
rm -rf $1/priv-app/Tag*
rm -rf $1/priv-app/Tips*
rm -rf $1/priv-app/Turbo*
rm -rf $1/priv-app/Velvet
rm -rf $1/priv-app/Wellbeing*
rm -rf $1/usr/srec/en-US
rm -rf $1/app/AndroidAuto*
rm -rf $1/app/arcore
rm -rf $1/app/Books*
rm -rf $1/app/CalculatorGoogle*
rm -rf $1/app/CalendarGoogle*
rm -rf $1/app/CarHomeGoogle
rm -rf $1/app/CloudPrint*
rm -rf $1/app/DevicePersonalizationServices
rm -rf $1/app/DMAgent
rm -rf $1/app/Drive
rm -rf $1/app/Duo
rm -rf $1/app/EditorsDocs
rm -rf $1/app/Editorssheets
rm -rf $1/app/EditorsSlides
rm -rf $1/app/ExchangeServices
rm -rf $1/app/FaceLock
rm -rf $1/app/Fitness*
rm -rf $1/app/GalleryGo*
rm -rf $1/app/Gcam*
rm -rf $1/app/GCam*
rm -rf $1/app/Gmail*
rm -rf $1/app/GMail*
rm -rf $1/app/GoogleCalculator*
rm -rf $1/app/GoogleCalendar*
rm -rf $1/app/GoogleCalendarSyncAdapter
rm -rf $1/app/GoogleCamera*
rm -rf $1/app/GoogleContacts*
rm -rf $1/app/GoogleContactsSyncAdapter
rm -rf $1/app/GoogleCloudPrint
rm -rf $1/app/GoogleEarth
rm -rf $1/app/GoogleExtshared*
rm -rf $1/app/GoogleExtShared*
rm -rf $1/app/GoogleGalleryGo
rm -rf $1/app/GoogleGo*
rm -rf $1/app/GoogleHome*
rm -rf $1/app/GoogleHindiIME*
rm -rf $1/app/GoogleKeep*
rm -rf $1/app/GoogleJapaneseInput*
rm -rf $1/app/GoogleLocationHistory*
rm -rf $1/app/GoogleLoginService*
rm -rf $1/app/GoogleMusic*
rm -rf $1/app/GoogleNow*
rm -rf $1/app/GoogleOne
rm -rf $1/app/GooglePhotos*
rm -rf $1/app/GooglePinyinIME*
rm -rf $1/app/GooglePlus
rm -rf $1/app/GoogleTTS*
rm -rf $1/app/GoogleVrCore*
rm -rf $1/app/GoogleZhuyinIME*
rm -rf $1/app/Hangouts
rm -rf $1/app/KoreanIME*
rm -rf $1/app/LocationHistory*
rm -rf $1/app/Maps*
rm -rf $1/app/Markup*
rm -rf $1/app/MessagesGo
rm -rf $1/app/MicropaperPrebuilt
rm -rf $1/app/Music*
rm -rf $1/app/NavGo
rm -rf $1/app/Newsstand
rm -rf $1/app/NexusWallpapers*
rm -rf $1/app/Ornament
rm -rf $1/app/Photos
rm -rf $1/app/Photos*
rm -rf $1/app/PicoTts
rm -rf $1/app/PixelSetupWizard*
rm -rf $1/app/PlayAutoInstallConfig*
rm -rf $1/app/PlayGames*
rm -rf $1/app/PrebuiltExchange3Google
rm -rf $1/app/PrebuiltBugle
rm -rf $1/app/PrebuiltDeskClock*
rm -rf $1/app/PrebuiltGmail
rm -rf $1/app/PrebuiltKeep
rm -rf $1/app/SoundAmplifierPrebuilt
rm -rf $1/app/Street
rm -rf $1/app/Stickers*
rm -rf $1/app/TalkBack
rm -rf $1/app/talkBack
rm -rf $1/app/talkback
rm -rf $1/app/TranslatePrebuilt
rm -rf $1/app/Turbo
rm -rf $1/app/Tycho
rm -rf $1/app/Videos
rm -rf $1/app/Wallet
rm -rf $1/app/WallpapersBReel*
rm -rf $1/app/YouTube*
rm -rf $1/etc/permissions/privapp-permissions-google_prebuilt.xml
rm -rf $1/etc/permissions/privapp-permissions-elgoog.xml
rm -rf $1/etc/sysconfig/pixel_2017_exclusive.xml
rm -rf $1/etc/sysconfig/pixel_experience_2017.xml
rm -rf $1/etc/sysconfig/gmsexpress.xml
rm -rf $1/etc/sysconfig/googledialergo-sysconfig.xml
rm -rf $1/etc/sysconfig/google-hiddenapi-package-whitelist.xml
rm -rf $1/etc/sysconfig/google.xml
rm -rf $1/etc/sysconfig/google_build.xml
rm -rf $1/etc/sysconfig/google_experience.xml
rm -rf $1/etc/sysconfig/google_exclusives_enable.xml
rm -rf $1/etc/sysconfig/go_experience.xml
rm -rf $1/etc/sysconfig/nexus.xml
rm -rf $1/etc/sysconfig/nga.xml
rm -rf $1/etc/sysconfig/pixel*
rm -rf $1/etc/sysconfig/turbo.xml
rm -rf $1/etc/sysconfig/wellbeing.xml
rm -rf $1/framework/com.google.android.camera*
rm -rf $1/framework/com.google.android.dialer*
rm -rf $1/framework/com.google.android.maps*
rm -rf $1/framework/oat/arm/com.google.android.camera*
rm -rf $1/framework/oat/arm/com.google.android.dialer*
rm -rf $1/framework/oat/arm/com.google.android.maps*
rm -rf $1/framework/oat/arm64/com.google.android.camera*
rm -rf $1/framework/oat/arm64/com.google.android.dialer*
rm -rf $1/framework/oat/arm64/com.google.android.maps*
rm -rf $1/lib/libaiai-annotators.so
rm -rf $1/lib/libcronet.70.0.3522.0.so
rm -rf $1/lib/libfilterpack_facedetect.so
rm -rf $1/lib/libfrsdk.so
rm -rf $1/lib/libgcam.so
rm -rf $1/lib/libgcam_swig_jni.so
rm -rf $1/lib/libocr.so
rm -rf $1/lib/libparticle-extractor_jni.so
rm -rf $1/lib64/libbarhopper.so
rm -rf $1/lib64/libfacenet.so
rm -rf $1/lib64/libfilterpack_facedetect.so
rm -rf $1/lib64/libfrsdk.so
rm -rf $1/lib64/libgcam.so
rm -rf $1/lib64/libgcam_swig_jni.so
rm -rf $1/lib64/libsketchology_native.so
rm -rf $1/overlay/GoogleConfigOverlay*
rm -rf $1/overlay/PixelConfigOverlay*
rm -rf $1/overlay/Gms*
rm -rf $1/app/framework-res__auto_generated_rro_1.apk
rm -rf $1/priv-app/Aiai*
rm -rf $1/priv-app/AmbientSense*
rm -rf $1/priv-app/AndroidAuto*
rm -rf $1/priv-app/AndroidMigrate*
rm -rf $1/priv-app/AndroidPlatformServices
rm -rf $1/priv-app/AssistantGo
rm -rf $1/priv-app/CalendarGoogle*
rm -rf $1/priv-app/CalculatorGoogle*
rm -rf $1/priv-app/CarrierServices
rm -rf $1/priv-app/CarrierSetup
rm -rf $1/priv-app/ConfigUpdater
rm -rf $1/priv-app/DataTransferTool
rm -rf $1/priv-app/DeviceHealthServices
rm -rf $1/priv-app/DevicePersonalizationServices
rm -rf $1/priv-app/DigitalWellbeing*
rm -rf $1/priv-app/FaceLock
rm -rf $1/priv-app/Gcam*
rm -rf $1/priv-app/GCam*
rm -rf $1/priv-app/GCS
rm -rf $1/priv-app/GmsCore*
rm -rf $1/priv-app/GoogleAssistant
rm -rf $1/priv-app/GoogleBackupTransport
rm -rf $1/priv-app/GoogleCalculator*
rm -rf $1/priv-app/GoogleCalendar*
rm -rf $1/priv-app/GoogleCamera*
rm -rf $1/priv-app/GoogleContacts*
rm -rf $1/priv-app/GoogleDialer*
rm -rf $1/priv-app/GoogleExtservices*
rm -rf $1/priv-app/GoogleExtServices*
rm -rf $1/priv-app/GoogleFeedback
rm -rf $1/priv-app/GoogleOneTimeInitializer
rm -rf $1/priv-app/GooglePartnerSetup
rm -rf $1/priv-app/GoogleRestore
rm -rf $1/priv-app/GoogleSearchGo
rm -rf $1/priv-app/GoogleServicesFramework
rm -rf $1/priv-app/GoogleSpeechServices
rm -rf $1/priv-app/Hotword*
rm -rf $1/priv-app/MaestroPrebuilt
rm -rf $1/priv-app/matchmaker*
rm -rf $1/priv-app/Matchmaker*
rm -rf $1/priv-app/Phonesky
rm -rf $1/priv-app/PixelLive*
rm -rf $1/priv-app/PrebuiltGmsCore*
rm -rf $1/priv-app/PixelSetupWizard*
rm -rf $1/priv-app/SCONE
rm -rf $1/priv-app/Scribe*
rm -rf $1/priv-app/SetupWizard*
rm -rf $1/priv-app/Tag*
rm -rf $1/priv-app/Tips*
rm -rf $1/priv-app/Turbo*
rm -rf $1/priv-app/TurboPrebuilt
rm -rf $1/priv-app/Velvet
rm -rf $1/priv-app/Wellbeing*
rm -rf $1/priv-app/WellbeingPrebuilt
rm -rf $1/usr/srec/en-US
rm -rf $1/app/AppleNLP*
rm -rf $1/app/AuroraDroid
rm -rf $1/app/AuroraStore
rm -rf $1/app/DejaVu*
rm -rf $1/app/DroidGuard
rm -rf $1/app/LocalGSM*
rm -rf $1/app/LocalWiFi*
rm -rf $1/app/MicroG*
rm -rf $1/app/MozillaUnified*
rm -rf $1/app/nlp*
rm -rf $1/app/Nominatim*
rm -rf $1/priv-app/AuroraServices
rm -rf $1/priv-app/FakeStore
rm -rf $1/priv-app/GmsCore
rm -rf $1/priv-app/GsfProxy
rm -rf $1/priv-app/MicroG*
rm -rf $1/priv-app/PatchPhonesky
rm -rf $1/priv-app/Phonesky
rm -rf $1/etc/default-permissions/microg*
rm -rf $1/etc/default-permissions/phonesky*
rm -rf $1/etc/permissions/features.xml
rm -rf $1/etc/permissions/com.android.vending*
rm -rf $1/etc/permissions/com.aurora.services*
rm -rf $1/etc/permissions/com.google.android.backup*
rm -rf $1/etc/permissions/com.google.android.gms*
rm -rf $1/etc/sysconfig/microg*
rm -rf $1/etc/sysconfig/nogoolag*
rm -rf $1/bin/nanodroid*
rm -rf $1/bin/novl
rm -rf $1/bin/npem
rm -rf $1/bin/nprp
rm -rf $1/bin/nutl
rm -rf $1/xbin/nanodroid*
rm -rf $1/xbin/novl
rm -rf $1/xbin/npem
rm -rf $1/xbin/nprp
rm -rf $1/xbin/nutl
rm -rf $1/app/AppleNLP*
rm -rf $1/app/AuroraDroid
rm -rf $1/app/AuroraStore
rm -rf $1/app/DejaVu*
rm -rf $1/app/DroidGuard
rm -rf $1/app/LocalGSM*
rm -rf $1/app/LocalWiFi*
rm -rf $1/app/MicroG*
rm -rf $1/app/MozillaUnified*
rm -rf $1/app/nlp*
rm -rf $1/app/Nominatim*
rm -rf $1/priv-app/AuroraServices
rm -rf $1/priv-app/FakeStore
rm -rf $1/priv-app/GmsCore
rm -rf $1/priv-app/GsfProxy
rm -rf $1/priv-app/MicroG*
rm -rf $1/priv-app/PatchPhonesky
rm -rf $1/priv-app/Phonesky
rm -rf $1/etc/default-permissions/microg*
rm -rf $1/etc/default-permissions/phonesky*
rm -rf $1/etc/permissions/features.xml
rm -rf $1/etc/permissions/com.android.vending*
rm -rf $1/etc/permissions/com.aurora.services*
rm -rf $1/etc/permissions/com.google.android.backup*
rm -rf $1/etc/permissions/com.google.android.gms*
rm -rf $1/etc/sysconfig/microg*
rm -rf $1/etc/sysconfig/nogoolag*
rm -rf $1/app/Abstruct
rm -rf $1/app/AdAway
rm -rf $1/app/BasicDreams
rm -rf $1/app/BlissPapers
rm -rf $1/app/BookmarkProvider
rm -rf $1/app/Browser*
rm -rf $1/app/Calendar*
rm -rf $1/app/Camera*
rm -rf $1/app/Chromium
rm -rf $1/app/ColtPapers
rm -rf $1/app/com.blissroms.aboutbliss
rm -rf $1/app/EasterEgg*
rm -rf $1/app/EggGame
rm -rf $1/app/Email*
rm -rf $1/app/ExactCalculator
rm -rf $1/app/Exchange2
rm -rf $1/app/FireFoxLite
rm -rf $1/app/Gallery*
rm -rf $1/app/GoogleClock
rm -rf $1/app/GugelClock
rm -rf $1/app/Jelly
rm -rf $1/app/Kiwi*
rm -rf $1/app/messaging
rm -rf $1/app/MiXplorer*
rm -rf $1/app/Music*
rm -rf $1/app/Partnerbookmark*
rm -rf $1/app/PartnerBookmark*
rm -rf $1/app/Phonograph
rm -rf $1/app/PhotoTable
rm -rf $1/app/RetroMusic*
rm -rf $1/app/VanillaMusic
rm -rf $1/app/Via*
rm -rf $1/app/QPGallery
rm -rf $1/app/QuickSearchBox
rm -rf $1/priv-app/AudioFX
rm -rf $1/priv-app/Dialer
rm -rf $1/priv-app/Camera*
rm -rf $1/priv-app/com.nilac.bliss.statistics
rm -rf $1/priv-app/Eleven
rm -rf $1/priv-app/Gallery2
rm -rf $1/priv-app/Klik
rm -rf $1/priv-app/MatLog
rm -rf $1/priv-app/MusicFX
rm -rf $1/priv-app/OmniSwitch
rm -rf $1/priv-app/Snap*
rm -rf $1/priv-app/Tag*
rm -rf $1/priv-app/Via*
rm -rf $1/priv-app/VinylMusicPlayer
rm -rf $1/app/AboutBliss
rm -rf $1/app/BasicDreams
rm -rf $1/app/BlissStatistics
rm -rf $1/app/BookmarkProvider
rm -rf $1/app/Browser*
rm -rf $1/app/Calendar*
rm -rf $1/app/Camera*
rm -rf $1/app/Dashboard
rm -rf $1/app/EasterEgg*
rm -rf $1/app/Email*
rm -rf $1/app/EmergencyInfo
rm -rf $1/app/Etar
rm -rf $1/app/Exchange2
rm -rf $1/app/Gallery*
rm -rf $1/app/Jelly
rm -rf $1/app/Messaging
rm -rf $1/app/messaging
rm -rf $1/app/Music*
rm -rf $1/app/Partnerbookmark*
rm -rf $1/app/PartnerBookmark*
rm -rf $1/app/PhotoTable*
rm -rf $1/app/RetroMusic*
rm -rf $1/app/SimpleGallery
rm -rf $1/app/ShiftPapers
rm -rf $1/app/Via*
rm -rf $1/app/WallpaperZone
rm -rf $1/app/QPGallery
rm -rf $1/app/QuickSearchBox
rm -rf $1/overlay/TelegramOverlay
rm -rf $1/overlay/WhatsAppOverlay
rm -rf $1/priv-app/AncientWallpaperZone
rm -rf $1/priv-app/Camera*
rm -rf $1/priv-app/crDroidMusic
rm -rf $1/priv-app/Dialer
rm -rf $1/priv-app/Eleven
rm -rf $1/priv-app/EmergencyInfo
rm -rf $1/priv-app/Gallery2
rm -rf $1/priv-app/MatLog
rm -rf $1/priv-app/MusicFX
rm -rf $1/priv-app/OmniSwitch
rm -rf $1/priv-app/SafetyHub*
rm -rf $1/priv-app/Snap*
rm -rf $1/priv-app/Tag*
rm -rf $1/priv-app/Via*
rm -rf $1/priv-app/VinylMusicPlayer
rm -rf $1/app/DeskClock
rm -rf $1/priv-app/Contacts
rm -rf $1/priv-app/Recorder*
rm -rf $1/app/DeskClock
rm -rf $1/app/Recorder*
rm -rf $1/priv-app/Contacts
rm -rf $1/priv-app/Recorder*
rm -rf $1/app/AiAsstVision
rm -rf $1/app/AnalyticsCore
rm -rf $1/app/com.miui.qr
rm -rf $1/app/facebook*
rm -rf $1/app/FrequentPhrase
rm -rf $1/app/Health
rm -rf $1/app/HybridAccessory
rm -rf $1/app/HybridPlatform
rm -rf $1/app/KSICibaEngine
rm -rf $1/app/InMipay
rm -rf $1/app/Joyose
rm -rf $1/app/Lens
rm -rf $1/app/mab
rm -rf $1/app/MiGalleryLockscreen
rm -rf $1/app/MiuiBugReport
rm -rf $1/app/MiuiCompass
rm -rf $1/app/MiuiDaemon
rm -rf $1/app/MiuiFrequentPhrase
rm -rf $1/app/MiuiGalleryLockscreen
rm -rf $1/app/MiuiScreenRecorder
rm -rf $1/app/MiuiVideoGlobal
rm -rf $1/app/MiuiVideoPlayer
rm -rf $1/app/MSA*
rm -rf $1/app/NextPay
rm -rf $1/app/Notes
rm -rf $1/app/PlayAutoInstallStubApp
rm -rf $1/app/VoiceAssistant
rm -rf $1/app/VoiceTrigger
rm -rf $1/app/WMServices
rm -rf $1/app/wps-lite
rm -rf $1/app/XMSFKeeper
rm -rf $1/app/YouDaoEngine
rm -rf $1/data-app/Gmail2
rm -rf $1/data-app/MiRemote
rm -rf $1/data-app/ShareMe
rm -rf $1/etc/yellowpage
rm -rf $1/priv-app/Browser
rm -rf $1/priv-app/CleanMaster
rm -rf $1/priv-app/facebook*
rm -rf $1/priv-app/GameCenter*
rm -rf $1/priv-app/GlobalMinusScreen
rm -rf $1/priv-app/MiBrowser*
rm -rf $1/priv-app/MiDrop
rm -rf $1/priv-app/MiGame*
rm -rf $1/priv-app/MiMover
rm -rf $1/priv-app/MiService
rm -rf $1/priv-app/MiShare*
rm -rf $1/priv-app/MiuiMusic*
rm -rf $1/priv-app/MiuiBrowser*
rm -rf $1/priv-app/MiuiHealth
rm -rf $1/priv-app/MiuiScanner
rm -rf $1/priv-app/MiuiVideo
rm -rf $1/priv-app/Music
rm -rf $1/priv-app/PartnerBookmarksProvider
rm -rf $1/priv-app/SoundRecorder
rm -rf $1/priv-app/Weather
rm -rf $1/priv-app/YellowPage
rm -rf $1/app/GooglePay
rm -rf $1/data-app/GlobalFashiongallery
rm -rf $1/data-app/wps_lite
rm -rf $1/data-app/XMRemoreController
rm -rf $PRODUCT/app/Chrome*
rm -rf $PRODUCT/overlay/ChromeOverlay
rm -rf $SYSTEM/app/Chrome*
