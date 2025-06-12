msiexec /i "\\dataserv\Installers\Deployed\PDQ\TeamViewer\Host\TeamViewer_Host.msi" /qn

"\\dataserv\installers\Deployed\PDQ\Creo\CreoView-Express-11-0-0-x86e-win64.exe" /v/qn

"\\dataserv\installers\Deployed\PDQ\Fortinet\FortiClient EMS\FortiClientSetup_7.0.13_x64.exe" /quiet /norestart

Add-AppxProvisionedPackage -PackagePath "\\dataserv\installers\Execs\HEVC\Microsoft.HEVCVideoExtension_2.1.1803.0_neutral_~_8wekyb3d8bbwe.AppxBundle" -Online -SkipLicense

"\\dataserv\Installers\Deployed\PDQ\HP\Insights Setup.exe" /SILENT /HIDETRAY=True CPIN=5V2nBLqb

"\\dataserv\Installers\Deployed\PDQ\Logitech\UnifyingSoftware\unifying252.exe" /S

"\\dataserv\Installers\Device Setup\MS Office 365\setup.exe" /configure "\\dataserv\Installers\Device Setup\MS Office 365\M365Apps.xml"

Add-AppxProvisionedPackage -PackagePath "\\DATASERV\Installers\Deployed\PDQ\MSTeams\MSTeams-x64.msix" -Online -SkipLicense

msiexec /i "\\dataserv\Installers\Deployed\PDQ\SentinelOne\SentinelInstaller_windows_64bit_v22_3_4_612.msi" /q /NORESTART SITE_TOKEN=eyJ1cmwiOiAiaHR0cHM6Ly9ldWNlMS0xMDQuc2VudGluZWxvbmUubmV0IiwgInNpdGVfa2V5IjogImdfY2Y5NTE4YzhjYWI2NTg3YyJ9

msiexec /i "\\dataserv\Installers\Deployed\PDQ\Zscaler\Zscaler-windows-3.7.1.54-installer-x64.msi" ALLUSERS=1 /qn /norestart /log output.log /quiet POLICYTOKEN="343934353A333A37343665623537312D346163632D343231622D393061312D303665323035353335313533" CLOUDNAME="zscaler" STRICTENFORCEMENT=1 USERDOMAIN="koerber.com"

"C:\Program Files (x86)\TeamViewer\TeamViewer.exe" assignment --id 0001CoABChAM7UQA3hwR7YxII1ESUwtfEigIACAAAgAJAHQ6gwWWBGgZkPflZM-135qp3Zl60ddpMbZBzelx5YbnGkDg-C8OqX_1gDJfQiVagtmcXNWgJnwkWQ3bzk5vYWLkZloPWnp0IfXwUMI1kAl0hULseQCgSz3QOdWs_u53o_1fIAEQ-eGiigs=