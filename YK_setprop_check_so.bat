@ECHO OFF
echo ------��Ҫ�ֻ������ϵ���----------------------------
echo ʹ��adb shell setprop����log��־���ã�
adb shell setprop debug.adoplayer.log.component 127
adb shell setprop debug.adoplayer.log.level info
adb shell setprop debug.adoplayer.log.option pts
echo -----���������-------------------------------------
echo -----��ӡ���ý��-----------------------------------
adb shell getprop | findstr debug.adoplayer.log
ping 127.0.0.1 -n 1 >nul
echo -----�鿴so�ļ��Ƿ����-----------------------------
adb shell ls /sdcard/ | findstr .so$
echo -----3������ִ��----------------------------------
ping 127.0.0.1 -n 3 >nul
@ECHO ON
