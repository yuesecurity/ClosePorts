net start MpsSvc
::��������

sc config MpsSvc start= auto
::��������

netsh advfirewall set allprofiles state on
::���÷���ǽ

netsh advfirewall firewall add rule name="NSA�������" dir=in protocol=TCP localport=445,139,137 action=block

pause