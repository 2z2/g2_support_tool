## 这是一个ROOT工具，增强的功能是自带了删除技能。

不用你操心一个一个删除APK了，他会一下帮你删除掉了
包括
`/system/app/`
`/system/priv-app/`
`/data/app/`
测试没有发现错误，如果有问题，请到群里联系我 

噢，对了，自动给你装了一个RE管理器原版的，不要的请直接删除。

使用方法

1、运行runme_kk.bat 或者 runme\_kk\_do\_not\_del\_auSMS.bat(跳转到`警告！！！`去看)
2、跟教程一样的流程

###警告！！！
该程序很无情的删除了内置的AU短信，因此你不得不使用环聊。
当然如果你不爽，请运行runme\_kk\_do\_not\_del\_auSMS.bat来ROOT，这个脚本不会删除内置的AU短信。



####2.0更新日志
* 同步更新了日本佬的2.0
* 添加删除CloudHub，也就是设置里面的那个云。


####2.1更新日志
* 增加删除了一些垃圾文件...
* 然后，感谢 “   最初。”提醒了我傻逼的一点...
* 抱歉在我更新2.0时忘记添加安装RE管理的语句了。抱歉 = =

####2.2更新日志 更新时间：2014.07.03
* 修正NFC以及FeliCa错误(FeliCa将会被精简，无用) 同步更新原版
    
####2.3更新日志 更新时间：2014.07.06
妈蛋这才是我最初想要的黑魔法好吧，这一次尽可能解放双手，基本搞定刷TOT获取ROOT权限后 精简、DIY一步到位。
本次更新的项目有：

1. 修改了build.prop的地区为CN，开启日历农历 T9 以及来电归属地`抱歉还有点不完善`
添加了跟上面归属地对应的归属地库APK
2. 修改了导航栏横纵向高度为25/26dpi 白色导航栏主题修改为小图标，黑色以及渐变色导航主题`并未`修改
3. 添加了多图标的G3主题
4. 添加APN配置文件，自动识别APN
5. 添加中文运营商配置`我是移动，实际不可用，联通电信貌似可用`
6. 添加LGMessage官方原版短信`感谢群内牧羊人` 
7. 添加了字体：微软雅黑、文泉驿微米黑、极限论坛的X黑

####2.4更新日志 更新时间：2014.07.06
1. 完善启动器页面的导航栏图标`即LGSystemUI.apk内图标`
2. 添加绿色守护免费原版`不需要请直接卸载、并不需要你运行一次`


***你会发现这次的包有点小大，这是对的～因为里面的素材体积比较大 = =#***



工具是日本开发者写的，我只是修改！！原工具版权归日本开发这ma34以及blackzigong所有

*********************************注意*********************************
このツールはLG G2日本モデルのハックを補助するためのツールです。

補償対象外の行為となりますので必ず自己責任で使用してください。
使用したことによりいかなる損害があったとしても責任は負えません。
CWM導入の前に必ずパーティションのバックアップを行なってください。
パーティションバックアップについては下記のページを参照してください。
http://android.slateblue.tk/viewtopic.php?f=23&t=137
起動しなくなった端末をdocomoショップ等に修理依頼する事はご遠慮ください。
同意して頂ける場合のみ機種をPCに接続して「runme.bat」を開き作業を進めてください。

※このツールはWindows用です。WWindows 8.1 Pro 64bit版にて動作確認
  済みですが、一部の環境では動作しない事がありますのでその際はご容赦願います。
**********************************************************************

このツールでは次の方たちの作成物を使用させて頂いております。
・android-rooting-tools/android_run_root_shell
・fi01/unlock_security_module
・djrbliss/loki


感謝いたします！


○バックアップについて
　本スクリプトにて/data以外の全領域をバックアップに対応しました。
　初回実行時にバックアップしてください。
　　※2回目以降バックアップすると上書きされますので
　　　CWMやRooted後にバックアップしないように注意してください。

　　ツール使用後にPC上backup\にバックアップされますので
　　フォルダ名をリネームしておくと間違った時に上書きされませんので安全です


○CWMリカバリについて
同梱されていないもしくは新しいVersionにて使いたい場合、
フォーラム
LGL22:http://android.slateblue.tk/viewtopic.php?f=25&t=160
L01F:http://android.slateblue.tk/viewtopic.php?f=25&t=179&p=1192#p1192

より取得して
recovery.img をfiles\recovery\へコピーしてください。

○恒久Root取得したい場合、
http://forum.xda-developers.com/showthread.php?t=1538053
より、UPDATE-SuperSU-v1.93.zipをダウンロードして
files\SuperSu\へコピーしてから実行してください。

*********************************WARNING*********************************
This is a tool to assist to hack your Japanese G2 variant.

Your warranty is now void.
We are not responsible for bricked devices, dead SD cards, or any other issues that may arise from ignorance.
Make sure to backup all partitions and keep them in a safe location.
See the detail below to backup.
http://android.slateblue.tk/viewtopic.php?f=23&t=137
Don't take a damaged device to a store due to your hacks.
If you agree, connect your device and run "runme.bat".

This is only for Windows.
We confirmed that this works on x64 Windows 8.1 Pro but might not work in some particular environments.
**********************************************************************

* Credits
android-rooting-tools for android_run_root_shell
fi01 for unlock_security_module
djrbliss for loki
and more...

* Backup
This tool supports to backup all partitions of your phone.
Do backup at first, just in case.
If you backup multiple times, your old backup will be overwrited.
Make sure that your phone is not rooted or installed CWM when you backup.
The backup will be transfered to your computer automatically and you should rename to avoid overwriting.

* CWM Recovery
If it doesn't exist or you want to a newer version, get it from below and put it in files\recovery.
LGL22: http://android.slateblue.tk/viewtopic.php?f=25&t=160
L01F: http://android.slateblue.tk/viewtopic.php?f=25&t=179&p=1192#p1192

* Permanent Root Access
Get UPDATE-SuperSU-v1.93.zip from below and put it in files\SuperSu\.
http://forum.xda-developers.com/showthread.php?t=1538053
