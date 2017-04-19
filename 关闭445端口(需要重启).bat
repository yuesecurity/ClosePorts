@echo off

@echo 是否关闭445端口？ (关闭445端口请输入0，开启445端口请输入1)
set /p var=
::@echo 你输入的是%var%
echo:



if %var% EQU 0 (
	echo 正在关闭445端口
	reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetBT\Parameters /v SMBDeviceEnabled  /f /t REG_DWORD /d 0
	echo:
	sc config LanmanServer start= disabled
	echo:
	)
if %var% EQU 1 (
	echo 正在开启445端口
	reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetBT\Parameters /v SMBDeviceEnabled  /f /t REG_DWORD /d 1
	echo:
	sc config LanmanServer start= auto
	echo:
	)


@echo 重启后生效
echo:
pause
