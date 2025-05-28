msiexec /uninstall "\\dataserv\Installers\Deployed\PDQ\7-Zip\7z2300-x64.msi" /qn

"C:\Program Files\SeagullBarTender\SuiteActivationWizard.exe" Deactivate 

"\\dataserv\Installers\Deployed\PDQ\Bartender\BT2016_R9_3160_Full_x64.exe" /s /v"/qn REMOVE=ALL"

msiexec /uninstall "\\dataserv\Installers\Deployed\PDQ\Chrome\115.0.5790.110\Chrome_64bit_115.0.5790.110.msi" /qn

"C:\Program Files\Greenshot\unins000.exe" /VERYSILENT /NORESTART

msiexec /uninstall "\\dataserv\Installers\Deployed\PDQ\Java\JRE\amazon-corretto-11.0.19.7.1-windows-x64.msi" /qn

msiexec /uninstall "\\dataserv\Installers\Deployed\PDQ\VideoLAN.org\VLC\vlc-3.0.18-win64.msi" /qn