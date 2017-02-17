:loop
adb shell monkey  -p com.youku.phone --monitor-native-crashes  --pct-touch 80 --pct-motion 15 --pct-nav 5 -s %random% -v  --throttle 200 320000 >common\%random%.log
@ping -n 15 127.1 >nul
adb reboot
@ping -n 120 127.1 >nul
@goto loop