@echo off

@echo �Ƿ�ر�445�˿ڣ� (�ر�445�˿�������0������445�˿�������1)
set /p var=
::@echo ���������%var%
echo:



if %var% EQU 0 (
	echo ���ڹر�445�˿�
	reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetBT\Parameters /v SMBDeviceEnabled  /f /t REG_DWORD /d 0
	echo:
	sc config LanmanServer start= disabled
	echo:
	)
if %var% EQU 1 (
	echo ���ڿ���445�˿�
	reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetBT\Parameters /v SMBDeviceEnabled  /f /t REG_DWORD /d 1
	echo:
	sc config LanmanServer start= auto
	echo:
	)


@echo ��������Ч
echo:
pause