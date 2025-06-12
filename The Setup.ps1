Write-Host 'Warming up and waking up...'

reg add 'HKLM\SOFTWARE\Policies\Hewlett-Packard\HP Touchpoint Manager\GPO\DisableOnlineCheck' /v State /t REG_SZ /d True /f

Install-Script Update-InboxApp

Install-Module PSWindowsUpdate

Add-WUServiceManager -MicrosoftUpdate

powercfg.exe -change -standby-timeout-ac 0
#--------------------------------------------------------------------------------
Write-Host 'Time to delet! >:^)'

Write-Host '1) UWP Applications'

$AppsList = (
    '26830TonyLin.SensorInfo',
    'AD2F1837.HPPrivacySettings',
    'AD2F1837.HPSystemInformation',
    'AD2F1837.HPEasyClean',
    'AD2F1837.HPPowerManager',
    'AD2F1837.myHP',
    'AppUp.IntelConnectivityPerformanceSuite',
    'AppUp.IntelManagementandSecurityStatus',
    'Clipchamp.Clipchamp',
    'DolbyLaboratories.DolbyAccess',
    'Microsoft.549981C3F5F10', #Cortana
    'Microsoft.3DBuilder',
    'Microsoft.BingFinance',
    'Microsoft.BingNews',
    'Microsoft.BingSports',
    'Microsoft.BingWeather',
    'Microsoft.GetHelp',
    'Microsoft.Getstarted',
    'Microsoft.Messaging',
    'Microsoft.MicrosoftSolitaireCollection',
    'Microsoft.Microsoft3DViewer',
    'Microsoft.OneConnect',
    'Microsoft.People',
    'Microsoft.SkypeApp',
    'Microsoft.MixedReality.Portal',
    'Microsoft.Office.OneNote',
    'Microsoft.SensorExplorer',
    'Microsoft.OutlookForWindows',
    'MicrosoftWindows.Client.CBS', #Get Started
    'microsoft.windowscommunicationsapps',
    'Microsoft.WindowsFeedbackHub',
    'Microsoft.XboxApp',
    'Microsoft.XboxGamingOverlay',
    'Microsoft.XboxIdentityProvider',
    'Microsoft.YourPhone',
    'Microsoft.ZuneMusic',
    'Microsoft.ZuneVideo',
    'RealtekSemiconductorCorp.HPAudioControl',
    'MirametrixInc.GlancebyMirametrix',
    'E046963F.cameraSettings', #Lenovo View
    'C:\Program Files\HP\HP Client Security Manager\HP.ClientSecurityManager.exe',
    'MicrosoftCorporationII.QuickAssist',
    'Microsoft.GamingApp'
)
ForEach ($App in $AppsList) {
    $PackageFullName = (Get-AppxPackage $App).PackageFullName
    $ProPackageFullName = (Get-AppxProvisionedPackage -online | Where-Object { $_.Displayname -eq $App }).PackageName
    write-host $PackageFullName
    Write-Host $ProPackageFullName
    if ($PackageFullName) {
        Write-Host Removing Package: $App
        remove-AppxPackage -package $PackageFullName
    }
    else {
        Write-Host Unable to find package: $App
    }
    if ($ProPackageFullName) {
        Write-Host Removing Provisioned Package: $ProPackageFullName
        Remove-AppxProvisionedPackage -online -packagename $ProPackageFullName
    }
    else {
        Write-Host Unable to find provisioned package: $App
    }
}
Write-Host 'Time for the "special" ones trifecta. >:^('

Write-Host '1) Interenet Ad Links'

Remove-Item -Path 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe offers.lnk'
Remove-Item -Path 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Miro Offer.lnk'
Remove-Item -Path 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\TCO Certified.lnk'

Write-Host '2) UWP Applications'

Get-AppxPackage -allusers 'Microsoft.Messaging' | Remove-AppxPackage
Get-AppxPackage -allusers 'E046963F.cameraSettings' | Remove-AppxPackage
Get-AppxPackage -allusers 'Microsoft.GamingApp' | Remove-AppxPackage
Get-AppxPackage -allusers 'MicrosoftWindows.Client.CBS' | Remove-AppxPackages
Get-AppxPackage -allusers 'MicrosoftCorporationII.QuickAssist' | Remove-AppxPackage

Write-Host '3) MSI Applications'

$HPCO = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Connection Optimizer' }
$HPCO.Uninstall()

$HPAWP = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Accessory WMI Provider' }
$HPAWP.Uninstall()

$HPDAWP = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Dock Accessory WMI Provider' }
$HPDAWP.Uninstall()

$HPNOT = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Notifications' }
$HPNOT.Uninstall()

$HPSRE = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Sure Recover' }
$HPSRE.Uninstall()

$HPSRM = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Sure Run Module' }
$HPSRM.Uninstall()

$HPSUS = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Security Update Service' }
$HPSUS.Uninstall()

$HPTDG4FI = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Thunderbolt Dock G4 Firmware Installer' }
$HPTDG4FI.Uninstall()

$HPW = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Wolf Security' }
$HPW.Uninstall()

$HPWC = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Wolf Security - Console' }
$HPWC.Uninstall()

$ICS = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'ICS' }
$ICS.Uninstall()

$PolyLens = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'Poly Lens' }
$PolyLens.Uninstall()

Write-Host 'Brute Force/Special File Path Needed'

& 'C:\Program Files\HP\Documentation\Doc_uninstall.cmd'

& 'C:\Program Files (x86)\Lenovo\Clean Your Device\unins000.exe' /SILENT

& 'C:\Program Files (x86)\X-Rite Color Assistant\unins000.exe' /SILENT

& "C:\Program Files (x86)\Lenovo\System Update\unins000.exe" /SILENT
#--------------------------------------------------------------------------------
Write-Host 'Time to install some apps!'

$manufacturer = (gwmi win32_computersystem).Manufacturer
"This PC is a $manufacturer PC!"

if ($manufacturer -like 'Microsoft*') {
    write-host 'Installing Surface App...'
    Add-AppxProvisionedPackage -PackagePath '\\dataserv\Installers\Deployed\PDQ\Surface Hub\Microsoft.SurfaceHub_74.6030.188.0_neutral_~_8wekyb3d8bbwe.Msixbundle' -Online -SkipLicense
}
if ($manufacturer -like 'Lenovo*') {
    write-host 'Installing Commercial Vantage...'
    & '\\dataserv\Installers\Device Setup\Scrips\Lenovo Commercial Vantage Install.bat.lnk'
}
if ($manufacturer -like 'HP*') {
    write-host 'Installing Support Assisstant & PC Hardware Diagnostics...'
    Add-AppxProvisionedPackage -PackagePath '\\dataserv\Installers\Deployed\PDQ\HP\HP Support Assistant\HPSA9x\3f002cfc52ec4a5f9e59948bdc595d7a.appxbundle' -Online -SkipLicense
    Add-AppxProvisionedPackage -PackagePath '\\dataserv\Installers\Deployed\PDQ\HP\HP PC Hardware & Diagnostics Windows\AD2F1837.HPPCHardwareDiagnosticsWindows_2.6.2.0_x64__v10z8vjag6ke6.Appx' -Online -SkipLicense
}

Feature - 'Ask if this is a loaner laptop that needs VMWare'
#$input = Read-Host 'Is this going to be a loaner laptop?' [y/n]' (This line breaks everything below it for some reason.)
switch ($input) {
    y { '\\dataserv\Installers\Device Setup\Scrips\VMWare Pro 17 Install.bat' }
    n { exit }
    default { write-warning 'Skipping VMware Installation' }
}
#--------------------------------------------------------------------------------
Write-Host 'Time to update!'

Get-AppxPackage | Update-InboxApp

Install-WindowsUpdate -MicrosoftUpdate -AcceptAll | Out-File 'C:\($env.computername-Get-Date -f yyyy-MM-dd)-MSUpdates.log' -Force

#-AutoReboot
#--------------------------------------------------------------------------------
Write-Host 'Last but not least, installing the base standard set of applications...'
& '\\dataserv\Installers\Device Setup\Scrips\Base Apps Install.bat'

Write-Host '#Back to smol boi... Bye Bye!'
Set-ExecutionPolicy Restricted -Scope LocalMachine -Force