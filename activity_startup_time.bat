@ECHO OFF

ECHO.:::::::::::::::::::::::::::::::::::::::::::::::::
ECHO.::                                             ::
ECHO.::        Activity������תʱ����             ::
ECHO.::                                             ::
ECHO.:::::::::::::::::::::::::::::::::::::::::::::::::


ECHO.[ INFO ] �����־

adb logcat -c

ECHO.[ INFO ] ��ؿ�ʼ(Ctrl+C����)

ECHO.[ INFO ] �����뿽���������

adb logcat -s ActivityManager | Findstr /C:": Displayed"