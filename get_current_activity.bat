@ECHO OFF

COLOR 0A

ECHO.:::::::::::::::::::::::::::::::::::::::::::::::::

ECHO.::                                             ::

ECHO.::           ��ǰ���е�APP����                 ::

ECHO.::                                             ::

ECHO.:::::::::::::::::::::::::::::::::::::::::::::::::

::**************�ڴ��޸�Ŀ¼**************************

SET pcDir=%~dp0



FOR /F "tokens=3 delims= " %%a in ('adb shell dumpsys window^|find "mCurrentFocus"') do (

        FOR /F "tokens=1 delims=}" %%i in ("%%a") do (

        ECHO.[ INFO ] ����/���

        ECHO.[ INFO ] %%i

        )

)

ECHO.

PAUSE
