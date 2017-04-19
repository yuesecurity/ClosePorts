net start MpsSvc
::开启服务

sc config MpsSvc start= auto
::开机启动

netsh advfirewall set allprofiles state on
::启用防火墙

netsh advfirewall firewall add rule name="NSA缓解规则" dir=in protocol=TCP localport=445,139,137 action=block

pause
