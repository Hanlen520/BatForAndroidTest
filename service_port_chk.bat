@echo off
rem			�˿�ռ�ü�⹤��
rem			gcy
rem			20150701
rem			V1.2
setlocal enabledelayedexpansion
REM mode con lines=10 cols=55
:listen
set /p listen=���������˿ں�:
(for /f "delims=: tokens=2,3" %%i in ('netstat -ano -p TCP') do (
echo %%i %%j
))>"netstat.txt"
findstr /C:"%listen%" netstat.txt>nul
if not errorlevel 0  goto notused  else goto used
:used
(for /f "tokens=1,5" %%j in ('findstr /C:"%listen%" netstat.txt') do (
echo %%j %%k
))>"netstat_port.txt"
for /f "tokens=1*" %%j in ('type "netstat_port.txt"') do (
if %%j==%listen% (
echo.
REM echo %listen% �˿��ѱ�PIDΪ[%%k]�Ľ���ռ��
TASKLIST /FI "PID eq %%k"
echo.
del "netstat.txt"
del "netstat_port.txt"
goto listen
))
:notused
echo.
echo %listen% �˿�δ��ռ��
echo.
del "netstat.txt"
del "netstat_port.txt"
goto listen