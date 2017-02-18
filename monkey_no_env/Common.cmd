:loop

adb shell monkey -p com.youku.phone  --monitor-native-crashes --kill-process-after-error --pct-touch 70 --pct-motion 15 --pct-nav 5 --pct-anyevent 10 -s %random% -v -v --throttle 500  5880000 >>log\%random%_log.log 2>>log\%random%_err.log                                            

@ping -n 15 127.1 >nul

adb reboot

@ping -n 120 127.1 >nul

@goto loop