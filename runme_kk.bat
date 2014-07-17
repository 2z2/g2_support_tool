@echo off
for /f "tokens=3 delims= " %%a in ('chcp') do set lang=%%a
if "%lang%" == "932" (set doc="%~dp0doc\kk_jp") else (set doc="%~dp0doc\kk_en")
SET adb="%~dp0bin\adb.exe"

mode con:cols=130 lines=40
type %doc%\"01_Thanks.txt"
pause

%adb% shell id
IF %ERRORLEVEL% neq 0 goto device_not_found
echo ---------------------------------------------------------
echo push files
echo ---------------------------------------------------------
%adb% push "%~dp0files_kk" /data/local/tmp
%adb% push "%~dp0files\SuperSu\eu.chainfire.supersu-193.apk" /data/local/tmp/
%adb% push "%~dp0files\tool\re.apk" /data/local/tmp/
%adb% push "%~dp0files\tool\com.oasisfeng.greenify.apk" /data/local/tmp/
%adb% push "%~dp0files\tool\xposed27.apk" /data/local/tmp/
echo ---------------------------------------------------------
echo push mod files 
echo XHei.TTC pick up from http://bbs.themex.net/showthread.php?t=16851157 thanks a lot
echo XHei.TTC's size over 40mb it may take a little mooooore tiiiiime to push it just wait 
echo ---------------------------------------------------------
::copy mod files to temp folder
%adb% push "%~dp0files_mod" /data/local/tmp
::copy finish

%adb% shell chmod 755 /data/local/tmp/busybox_file
%adb% shell chmod 755 /data/local/tmp/rooting.sh
%adb% shell chmod 755 /data/local/tmp/su_client
%adb% shell chmod 755 /data/local/tmp/su_server


type %doc%\"05_reboot.txt"
%adb% reboot
echo wait device bootup
%adb% wait-for-device
%adb% shell sleep 10

echo ---------------------------------------------------------
echo remove scan
echo ---------------------------------------------------------
%adb% shell /data/local/tmp/su_client -c "mount -o remount,rw /system"
%adb% shell /data/local/tmp/su_client -c "/data/local/tmp/busybox_file mount -o rw,remount /system"

%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGDMSClient.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGDMSClient.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/bin/subsystem_ramdump"
%adb% shell /data/local/tmp/su_client -c "rm /system/bin/dumpstate"

::del app

echo ---------------------------------------------------------
echo deleting stock rom unuseful app...waiting
echo ---------------------------------------------------------

%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/au_screen_shot_share_vcode_010103_vname_01.01.03.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/au_Wi-Fi_Connect.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/auBackupapp_30005_VC1_140430.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/auoneidsetting.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/auoneidsetting.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/Cmail.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/Cmail.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/ConditionRecorder_signed_noicon_ANDROID_321900549_20140319.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/DeviceManager3LM-biwa-k.1.2.10-signed-aligned.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/disasterapp_05.11.29.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/FriendsNote_4_0_11_release.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/GLOBALPASSPORT_20140401_LTE.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/GoogleOneTimeInitializer.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/GoogleOneTimeInitializer.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/KddiInstaller.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/KddiInstaller.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/LGApplicationManager.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/LGApplicationManager.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/LGEmail.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/LGEmail.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/LGJDMB.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/LGJDMB.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/LGLifeStreamLogManager.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/LGLifeStreamLogManager.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/LGUpdateCenter.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/LGUpdateCenter.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/LGVidClip.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/LGVidClip.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/LGVideoEditor.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/LGVideoEditor.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/LISMO_FIX_JFK_KK_20140418.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/MLT.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/MLT.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/OneTimeInitializer.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/OneTimeInitializer.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/TagGoogle.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/TagGoogle.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/Velvet.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/Velvet.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/WallpaperCropper.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/WallpaperCropper.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/com.kddi.android.email_ver401013.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/priv-app/com.kddi.android.email_ver401013.odex"



:: del
:: add FeliCaService.apk 20140622
%adb% shell /data/local/tmp/su_client -c "rm /system/app/FeliCaService.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/FeliCaService.odex"

%adb% shell /data/local/tmp/su_client -c "rm /system/app/4.55_lw_ics.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/4.55_mc_ics.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/AndroidGGM-au-537_5.3.3-b141350-product-TopPageActivity.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/atfwd.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/atfwd.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/aucloud_vcode_41_vname_2.0.4.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/auCloudLivewallpaper_v010007.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/aucs_140331_1514.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/AuHome.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/AuHome.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/AuLockmedia.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/AuLockmedia.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/AuManagementSystem.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/AuManagementSystem.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/AuMarket.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/auShoppingMall_vNa2.4.7_20140314.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/BtDunApp_13sp.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/BookPass_v02.04.10p.apk"
::add delete cloudhub
%adb% shell /data/local/tmp/su_client -c "rm /system/app/CloudHub.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/CloudHub.odex"

%adb% shell /data/local/tmp/su_client -c "rm /system/app/DEmojiProvider.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/DEmojiProvider.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/dixim-android-player.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/dixim-android-player.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/dixim-android-requestplayer.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/dixim-android-requestplayer.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/dixim-android-secureplayer.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/dixim-android-secureplayer.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/emailprov.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/emailprov.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/facebook_ver5.0_20140217.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/GoogleDrive.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/GoogleDrive.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/GpsBTWIFI.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/GreeMarketGgp.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/GsmTuneAway.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/GsmTuneAway.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/Iconit.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/Ims.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/Ims.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/IrFront.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/IrFront.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/iWnnIME.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/iWnnIME.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/iWnnIME_Kbd_Black.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/iWnnIME_Kbd_Black.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/iWnnIME_Kbd_Lovely.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/iWnnIME_Kbd_Lovely.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/iWnnIME_Kbd_Natural.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/iWnnIME_Kbd_Natural.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/kkbox_android_au_4.08.12_Build_62.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGAppCleanup.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGAppCleanup.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGEIME_THEME_BLACK.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGEIME_THEME_BLACK.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGEIME_THEME_LOVELY.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGEIME_THEME_LOVELY.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGEIME_THEME_NATURAL.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGEIME_THEME_NATURAL.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGFOTA.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGFOTA.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGL22_eManual.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGLifeStream.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGLifeStream.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGMobilePrint.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGMobilePrint.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGTextTranslator.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGTextTranslator.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/MobileFeliCaClient.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/MobileFeliCaClient.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/MobileFeliCaMenuApp.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/MobileFeliCaMenuApp.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/MobileFeliCaSettingApp.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/MobileFeliCaSettingApp.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/MobileFeliCaWebPluginBoot.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/MobileFeliCaWebPluginBoot.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/NfcLock.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/NfcLock.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/NFCMenu2.4.0.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/NFCTagReader2.3.0.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/ohanashiassistant_vcode10034_20140409.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/OptimalRemoteClient-rc54-kk-unsigned-nolib.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/PacProcessor.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/PacProcessor.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/smapass-1.9na-homeapp-opt-v2.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/Street.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/Street.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/SVIService.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/SVIService.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/TOLOTPhotobook_20140425.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/TSMProxy_3.6.3.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/utapass_2.03.09_LG_pre-install.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGPCSuiteUI.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/LGPCSuiteUI.odex"
%adb% shell /data/local/tmp/su_client -c "rm /system/app/EasySettingWizard_040008.apk"


::del uninstallable app
%adb% shell /data/local/tmp/su_client -c "rm -rf /system/earlyuninstallable"
%adb% shell /data/local/tmp/su_client -c "rm /system/apps/bootup/LGDictionary.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/apps/bootup/LGLW_Feather.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/apps/bootup/LGLW_PolarBear.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/apps/bootup/LGLW_Prince.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/apps/bootup/LGLW_Seasonal.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/apps/bootup/LGPolarisViewer.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/apps/bootup/LGQTranslator.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/apps/bootup/LGSmartWorld.apk"
%adb% shell /data/local/tmp/su_client -c "rm /system/apps/bootup/LGWorldClockWidget.apk"



%adb% shell /data/local/tmp/su_client -c "rm /system/bin/fssamond"
%adb% shell /data/local/tmp/su_client -c "/data/local/tmp/busybox_file mount -o ro,remount /system"

type %doc%\"05_reboot.txt"
%adb% reboot
echo ---------------------------------------------------------
echo wait rebooot
echo ---------------------------------------------------------
%adb% wait-for-device
%adb% shell sleep 10

:install_supersu
echo ---------------------------------------------------------
echo install supersu
echo ---------------------------------------------------------
%adb% shell /data/local/tmp/su_client -c "mount -o remount,rw /system"
%adb% shell /data/local/tmp/su_client -c "/data/local/tmp/busybox_file mount -o rw,remount /system"
%adb% shell /data/local/tmp/su_client -c "cp -r /data/local/tmp/system/* /system/"
:: workaround for copy "mount"
%adb% shell /data/local/tmp/su_client -c "cp -f /data/local/tmp/system/bin/mount /system/bin/mount"

%adb% shell /data/local/tmp/su_client -c "chmod 755 /system/bin/mount"
%adb% shell /data/local/tmp/su_client -c "chmod 755 /system/etc/busybox_file"
%adb% shell /data/local/tmp/su_client -c "chmod 755 /system/etc/install-recovery.sh"
%adb% shell /data/local/tmp/su_client -c "chmod 755 /system/etc/install-recovery-2.sh"
%adb% shell /data/local/tmp/su_client -c "chmod 755 /system/etc/install-rooting.sh"
%adb% shell /data/local/tmp/su_client -c "chmod 755 /system/etc/init.d/99SuperSUDaemon"
%adb% shell /data/local/tmp/su_client -c "chmod 755 /system/xbin/daemonsu"
%adb% shell /data/local/tmp/su_client -c "chmod 755 /system/addon.d/99-supersu.sh"

echo ---------------------------------------------------------
echo apply mod to system folder
echo ---------------------------------------------------------
%adb% shell /data/local/tmp/su_client -c "cp -r /data/local/tmp/cpsystem/* /system/"
%adb% shell /data/local/tmp/su_client -c "cp -f /data/local/tmp/cpsystem/bin/app_process /system/bin/app_process"

echo ---------------------------------------------------------
echo mod permissions
echo ---------------------------------------------------------
%adb% shell /data/local/tmp/su_client -c "chmod 644 /system/build.prop"
echo apply and mod permissions build.prop done!
%adb% shell /data/local/tmp/su_client -c "chmod 644 /system/priv-app/PhoneNumberLocation.apk"
echo apply and mod permissions PhoneNumberLocation done!
%adb% shell /data/local/tmp/su_client -c "chmod 644 /system/priv-app/LGSystemUI.apk"
echo apply and mod permissions LGSystemUI done!
%adb% shell /data/local/tmp/su_client -c "chmod 644 /system/app/SystemUI_Theme_White.apk"
echo apply and mod permissions SystemUI_Theme_White done!
%adb% shell /data/local/tmp/su_client -c "chmod 644 /system/app/MultiHome_Theme_G3_v0.5.apk"
echo apply and mod permissions MultiHome_Theme_G3_v0.5 done!
%adb% shell /data/local/tmp/su_client -c "chmod 644 /system/etc/apns-conf.xml"
echo apply and mod permissions apns-conf done!
%adb% shell /data/local/tmp/su_client -c "chmod 644 /system/etc/spn-conf.xml"
echo apply and mod permissions spn-conf done!
%adb% shell /data/local/tmp/su_client -c "chmod 644 /system/etc/featureset.xml"
echo apply and mod permissions featureset(LGMessage) done!
%adb% shell /data/local/tmp/su_client -c "chmod 644 /system/framework/framework-res.apk"
echo apply and mod permissions framework-res done!
%adb% shell /data/local/tmp/su_client -c "chmod 644 /system/priv-app/LGMessage.apk"
echo apply and mod permissions LGMessage done!
%adb% shell /data/local/tmp/su_client -c "chmod 755 /system/bin/app_process"
echo apply and mod permissions xposed app_process done!
echo begin mod fonts
%adb% shell /data/local/tmp/su_client -c "chmod 644 /system/etc/system_fonts.xml"
%adb% shell /data/local/tmp/su_client -c "chmod 644 /system/fonts/DroidSansFallback.ttf"
%adb% shell /data/local/tmp/su_client -c "chmod 644 /system/fonts/MiHei-KR.ttf"
%adb% shell /data/local/tmp/su_client -c "chmod 644 /system/fonts/Msyh-Bold.ttf"
%adb% shell /data/local/tmp/su_client -c "chmod 644 /system/fonts/Msyh-Regular.ttf"
%adb% shell /data/local/tmp/su_client -c "chmod 644 /system/fonts/XHei.TTC"
echo fonts modfied


%adb% shell /data/local/tmp/su_client -c "/data/local/tmp/busybox_file mount -o ro,remount /system"
%adb% shell /data/local/tmp/su_client -c "pm install /data/local/tmp/eu.chainfire.supersu-193.apk"
%adb% shell /data/local/tmp/su_client -c "pm install /data/local/tmp/re.apk"
%adb% shell /data/local/tmp/su_client -c "pm install /data/local/tmp/com.oasisfeng.greenify.apk"
%adb% shell /data/local/tmp/su_client -c "pm install /data/local/tmp/xposed27.apk"


echo begin install xposed jar files
%adb% shell /data/local/tmp/su_client -c "/data/local/tmp/busybox_file mount -o rw,remount /data"
::%adb% shell /data/local/tmp/su_client -c "mkdir /data/data/de.robv.android.xposed.installer"
::%adb% shell /data/local/tmp/su_client -c "chmod 751 /data/data/de.robv.android.xposed.installer"
%adb% shell /data/local/tmp/su_client -c "mkdir /data/data/de.robv.android.xposed.installer/bin"
%adb% shell /data/local/tmp/su_client -c "chmod 771 /data/data/de.robv.android.xposed.installer/bin"


%adb% shell /data/local/tmp/su_client -c "cp -r /data/local/tmp/cpdata/* /data/data/de.robv.android.xposed.installer/bin/"
%adb% shell /data/local/tmp/su_client -c "chmod 644 /data/data/de.robv.android.xposed.installer/bin/XposedBridge.jar"
echo begin install xposed jar files done
%adb% shell /data/local/tmp/su_client -c "/data/local/tmp/busybox_file mount -o ro,remount /data"



type %doc%\"05_reboot.txt"
%adb% reboot
echo ---------------------------------------------------------
echo wait rebooot
echo ---------------------------------------------------------
%adb% wait-for-device
%adb% shell sleep 10

echo ---------------------------------------------------------
echo wait cleanup
%adb% shell /data/local/tmp/su_client -c "rm -rf /data/local/tmp/system"
%adb% shell /data/local/tmp/su_client -c "rm -rf /data/local/tmp/cpsystem"
%adb% shell /data/local/tmp/su_client -c "rm /data/local/tmp/eu.chainfire.supersu-193.apk"
%adb% shell /data/local/tmp/su_client -c "rm /data/local/tmp/re.apk"
%adb% shell /data/local/tmp/su_client -c "rm /data/local/tmp/com.oasisfeng.greenify.apk"

::==============================================================
:finish
COLOR 07
call :clean
type %doc%\"02_End.txt"
pause
exit /b

::==============================================================
:device_not_found
COLOR 0C
type %doc%\"09_Error_device_not_found.txt"
pause
exit /b

::==============================================================
:adb_push
%adb% push "%~dp0files_kk" /data/local/tmp/
%adb% push "%~dp0files\SuperSu\eu.chainfire.supersu-193.apk" /data/local/tmp/
%adb% push "%~dp0files\tool\re.apk" /data/local/tmp/
%adb% push "%~dp0files\tool\com.oasisfeng.greenify.apk" /data/local/tmp/

::IF %ERRORLEVEL% neq 0 exit /b 1
%adb% shell chmod 755 /data/local/tmp/busybox_file
%adb% shell chmod 755 /data/local/tmp/rooting.sh
exit /b

::==============================================================
:clean
exit /b
