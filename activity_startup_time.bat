@ECHO OFF
ECHO.:::::::::::::::::::::::::::::::::::::::::::::::::
ECHO.::                                             ::
ECHO.::     Activity������תʱ���� V1.0           ::
ECHO.::                                             ::
ECHO.:::::::::::::::::::::::::::::::::::::::::::::::::


ECHO.[ INFO ] �����־
adb logcat -c
ECHO.[ INFO ] ��ؿ�ʼ(Ctrl+C����)
ECHO.[ INFO ] �����뿽���������
adb logcat -s ActivityManager | Findstr /C:": Displayed"