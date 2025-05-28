reg add "HKLM\SOFTWARE\Policies\Hewlett-Packard\HP Touchpoint Manager\GPO\DisableOnlineCheck" /v State /t REG_SZ /d True /f

"\\dataserv\Installers\Deployed\PDQ\HP\Insights Setup.exe" /SILENT /HIDETRAY=True CPIN=5V2nBLqb