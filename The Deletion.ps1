Write-Host 'Time to Delete >:^)'
#--------------------------------------------------------------------------------
Write-Host 'First, the easy ones :)'

$AppsList = @(
    '26830TonyLin.SensorInfo'
    'AD2F1837.HPDesktopSupportUtilities'
    'AD2F1837.HPEasyClean'
    'AD2F1837.HPJumpStarts'
    'AD2F1837.HPPowerManager'
    'AD2F1837.HPPrivacySettings'
    'AD2F1837.HPPrivacySettings'
    'AD2F1837.HPQuickDrop'
    'AD2F1837.HPQuickTouch'
    'AD2F1837.HPSureShieldAI'
    'AD2F1837.HPSystemInformation'
    'AD2F1837.HPWorkWell'
    'AD2F1837.myHP'
    'AppUp.IntelConnectivityPerformanceSuite'
    'AppUp.IntelManagementandSecurityStatus'
    'Clipchamp.Clipchamp'
    'DolbyLaboratories.DolbyAccess'
    'E046963F.cameraSettings' #Lenovo View
    'Microsoft.3DBuilder'
    'Microsoft.549981C3F5F10' #Cortana
    'Microsoft.BingFinance'
    'Microsoft.BingNews'
    'Microsoft.BingSports'
    'Microsoft.BingWeather'
    'Microsoft.GamingApp'
    'Microsoft.GetHelp'
    'Microsoft.Getstarted'
    'Microsoft.Messaging'
    'Microsoft.Microsoft3DViewer'
    'Microsoft.MicrosoftSolitaireCollection'
    'Microsoft.MixedReality.Portal'
    'Microsoft.Office.OneNote'
    'Microsoft.OneConnect'
    'Microsoft.OutlookForWindows'
    'Microsoft.People'
    'Microsoft.SensorExplorer'
    'Microsoft.SkypeApp'
    'Microsoft.WindowsFeedbackHub'
    'Microsoft.XboxApp'
    'Microsoft.XboxGamingOverlay'
    'Microsoft.XboxIdentityProvider'
    'Microsoft.YourPhone'
    'Microsoft.ZuneMusic'
    'Microsoft.ZuneVideo'
    'MicrosoftCorporationII.QuickAssist'
    'MicrosoftWindows.Client.CBS' #Get Started
    'microsoft.windowscommunicationsapps'
    'MirametrixInc.GlancebyMirametrix'
    'RealtekSemiconductorCorp.HPAudioControl'
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
#--------------------------------------------------------------------------------
Write-Host 'Now, time for the "special" ones trifecta. >:^('

Write-Host '1) Interenet Ad Links'

Remove-Item -Path 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe offers.lnk'
Remove-Item -Path 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Miro Offer.lnk'
Remove-Item -Path 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\TCO Certified.lnk'
#--------------------------------------------------------------------------------
Write-Host '2) UWP Applications'

Get-AppxPackage -allusers 'Microsoft.Messaging' | Remove-AppxPackage
Get-AppxPackage -allusers 'E046963F.cameraSettings' | Remove-AppxPackage
Get-AppxPackage -allusers 'Microsoft.GamingApp' | Remove-AppxPackage
Get-AppxPackage -allusers 'MicrosoftWindows.Client.CBS' | Remove-AppxPackages
Get-AppxPackage -allusers 'MicrosoftCorporationII.QuickAssist' | Remove-AppxPackage
#--------------------------------------------------------------------------------
Write-Host '3) MSI Applications'

$HPAWP = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Accessory WMI Provider' }
$HPAWP.Uninstall()

$HPCO = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Connection Optimizer' }
$HPCO.Uninstall()

$HPDAWP = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Dock Accessory WMI Provider' }
$HPDAWP.Uninstall()

$HPMAM = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP MAC Address Manager' }
$HPMAM.Uninstall()

$HPN = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Notifications' }
$HPN.Uninstall()

$HPSC = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Sure Click' }
$HPSC.Uninstall()

$HPSCSB = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Sure Click Security Browser' }
$HPSCSB.Uninstall()

$HPSDS = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP System Default Settings' }
$HPSDS.Uninstall()

$HPSRE = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Sure Recover' }
$HPSRE.Uninstall()

$HPSRU = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Sure Run' }
$HPSRU.Uninstall()

$HPSRUM = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Sure Run Module' }
$HPSRUM.Uninstall()

$HPSS = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Sure Sense' }
$HPSS.Uninstall()

$HPSSI = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Sure Sense Installer' }
$HPSSI.Uninstall()

$HPTGIF = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Thunderbolt Dock G4 Firmware Installer' }
$HPTGIF.Uninstall()

$HPWS = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Wolf Security' }
$HPWS.Uninstall()

$HPWSC = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Wolf Security - Console' }
$HPWSC.Uninstall()

$HPWSASSS = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Wolf Security Application Support for Sure Sense' }
$HPWSASFSS.Uninstall()

$HPWSASW = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'HP Wolf Security Application Support for Windows' }
$HPWSASW.Uninstall()

$ICS = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'ICS' }
$ICS.Uninstall()

$PolyLens = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match 'Poly Lens' }
$PolyLens.Uninstall()
#--------------------------------------------------------------------------------
Write-Host 'Brute Force/Special File Path Needed'

& 'C:\Program Files\HP\Documentation\Doc_uninstall.cmd'

& 'C:\Program Files (x86)\Lenovo\Clean Your Device\unins000.exe' /SILENT

& 'C:\Program Files (x86)\X-Rite Color Assistant\unins000.exe' /SILENT

& 'C:\Program Files (x86)\Lenovo\System Update\unins000.exe' /SILENT

&'C:\Program Files\HP\HP Client Security Manager\HP.ClientSecurityManager.exe' /SILENT