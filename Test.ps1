#SACRED TEXT DO NOT TOUCH
Write-Host "Icles"
#SACRED TEXT DO NOT TOUCH
#---------------------------------------------------------------------------
#Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
#Install-Module -Name Microsoft.PowerShell.StartMenu
#Import-Module Microsoft.PowerShell.StartMenu
#Import-Module StartLayout

#Family, QUick Assit, & Xbox Trials
#Get-AppxPackage -allusers Where-Object {$_.Name -like "FamilySafety"} | Remove-AppxPackage
#Get-WindowsCapability -Online | Where-Object {$_.Name -like "*QuickAssist*"} | Select Name
#Get-AppxPackage -allusers 'Microsoft.GamingApp' | Remove-AppxPackage
#Get-AppxPackage -allusers 'MicrosoftCorporationII.QuickAssist' | Remove-AppxPackage

#MSI Apps Trials
#$appname = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match "appname" } | ForEach-Object { $appname.Uninstall() } (Template)

#$PolyLens = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match "Poly Lens" } $PolyLens.Uninstall()
#$HPDocumentation = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match "HP Documentation" } 
#$HPDocumentation.Uninstall()

# Get the list of pinned apps in the Start menu
#$apps = Get-StartApps

# Unpin the apps from the Start menu
#foreach ($app in $apps) {
 #   $appId = $app.AppId
  #  $packageName = $appId.Split('_')[0]
   # $packageFullName = (Get-AppxPackage | Where-Object {$_.PackageFamilyName -eq $packageName}).PackageFullName
    #$shell = New-Object -ComObject Shell.Application
    #$folder = $shell.Namespace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}')
    #$item = $folder.Items() | Where-Object {$_.Name -eq $app.Name}
    #$item.Verbs() | Where-Object {$_.Name.replace('&','') -match 'Unpin from Start'} | ForEach-Object {$_.DoIt()}
#}

#Write-Host "All ad apps unpinned from the Start menu."

#Remove-StartAppsStartMenuPinned -AppName "Spotify"

#function Pin-App {
    #param([string]$appname, [switch]$unpin)
    #try {
     #   if ($unpin.IsPresent) {
   #         ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Von \"Start\" l�sen|Unpin from Start'} | %{$_.DoIt()}
    #        return "App '$appname' unpinned from Start"
     #   } else {
      #      ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'An \"Start\" anheften|Pin to Start'} | %{$_.DoIt()}
       #     return "App '$appname' pinned to Start"
#        }
 #   } catch {
#        Write-Error "Error Pinning/Unpinning App! (App-Name correct?): '$appname'"
 #   }
#}

# Example usage:
#Pin-App "Mail" -unpin
#Pin-App "Store" -unpin
# Add more apps as needed

#$HPAWP = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match "HP Accessory WMI Provider" }
#$HPAWP.Uninstall()

#$HPTDG4FI = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match "HP Thunderbolt Dock G4 Firmware Installer" }
#$HPTDG4FI.Uninstall()

#& 'C:\Program Files\HP\Documentation\Doc_uninstall.cmd'

#& 'C:\Program Files (x86)\InstallShield Installation Information\{6468C4A5-E47E-405F-B675-A70A70983EA6}\setup.exe' -runfromtemp -l0x0409 -removeonly

#$HPDoc = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match "HP Documentation" }
#$HPDoc.Uninstall()

#$HPCO = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match "HP Connection Optimizer" }
#$HPCO.Uninstall()

#$HPNOT = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match "HP Notifications" }
#$HPNOT.Uninstall()

#$LenovoClean = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match "Clean Your Device" }
#$LenovoClean.Uninstall()

#$HPSRE = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match "HP Sure Recover" }
#$HPSRE.Uninstall()

#$HPSRM = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match "HP Sure Run Module" }
#$HPSRM.Uninstall()

#& 'C:\Program Files (x86)\Lenovo\Clean Your Device\unins000.exe' /SILENT

#xcopy '\\dataserv\Installers\Device Setup\Scrips\HPCO.iss' 'C:\Windows\Temp\' /b /v /y
#& 'C:\Program Files (x86)\InstallShield Installation Information\{6468C4A5-E47E-405F-B675-A70A70983EA6}\setup.exe' @('-s', '-f1C:\Windows\Temp\ISS-HP.iss') /silent

#xcopy '\\dataserv\Installers\Device Setup\Scrips\HPCO.iss' 'C:\Program Files (x86)\InstallShield Installation Information\{6468C4A5-E47E-405F-B675-A70A70983EA6}' /b /v /y
#& 'C:\Program Files (x86)\InstallShield Installation Information\{6468C4A5-E47E-405F-B675-A70A70983EA6}\setup.exe' -runfromtemp -l0x0409 -removeonly -s '-f1C:\Program Files (x86)\InstallShield Installation Information\{6468C4A5-E47E-405F-B675-A70A70983EA6}\ISS-HP.iss'

#& "C:\Program Files (x86)\InstallShield Installation Information\{6468C4A5-E47E-405F-B675-A70A70983EA6}\setup.exe" -runfromtemp -l0x0409  -removeonly -s -f1C:\Windows\Temp\ISS-HP.iss
#wait
#-confirm

#$baseapp =

#msiexec /i "\\dataserv\Installers\Deployed\PDQ\TeamViewer\Host\TeamViewer_Host.msi" /qn

#"\\DATASERV\Installers\Deployed\PDQ\Creo\CreoView10.exe" /v/qn

#"\\dataserv\installers\Deployed\PDQ\Fortinet\FortiClient EMS\FortiClientSetup_7.0.12_x64.exe" /quiet /norestart

#"\\dataserv\Installers\Deployed\PDQ\Logitech\UnifyingSoftware\unifying252.exe" /S

#"\\dataserv\Installers\Device Setup\MS Office 365\setup.exe" /configure "\\dataserv\Installers\Device Setup\MS Office 365\M365Apps.xml"

#msiexec /i "\\dataserv\Installers\Deployed\PDQ\SentinelOne\SentinelInstaller_windows_64bit_v22_3_4_612.msi" /q /NORESTART SITE_TOKEN=eyJ1cmwiOiAiaHR0cHM6Ly9ldWNlMS0xMDQuc2VudGluZWxvbmUubmV0IiwgInNpdGVfa2V5IjogImdfY2Y5NTE4YzhjYWI2NTg3YyJ9

#msiexec /i "\\dataserv\Installers\Deployed\PDQ\Zscaler\Zscaler-windows-3.7.1.54-installer-x64.msi" ALLUSERS=1 /qn /norestart /log output.log /quiet POLICYTOKEN="343934353A333A37343665623537312D346163632D343231622D393061312D303665323035353335313533" CLOUDNAME="zscaler" STRICTENFORCEMENT=1 USERDOMAIN="koerber.com"

#"C:\Program Files (x86)\TeamViewer\TeamViewer.exe" assignment --id 0001CoABChAM7UQA3hwR7YxII1ESUwtfEigIACAAAgAJAHQ6gwWWBGgZkPflZM-135qp3Zl60ddpMbZBzelx5YbnGkDg-C8OqX_1gDJfQiVagtmcXNWgJnwkWQ3bzk5vYWLkZloPWnp0IfXwUMI1kAl0hULseQCgSz3QOdWs_u53o_1fIAEQ-eGiigs=
#)

#Add-AppxPackage -allusers 'AD2F1837.HPProgrammableKey'

#'MicrosoftWindowsShellFamilySafetyMonitor', #(Name given by Co-Pilot lol)
#'MicrosoftCorporationII.MicrosoftFamily', #(Seems to not work)
#'AD2F1837.myHP_v10z8vjag6ke6!App', #(MyHP [INCORRECT BUZZER])
#---------------------------------------------------------------------------
#    manufacturer installation variation
#gcim

# $manufacturer = (gwmi win32_computersystem).Manufacturer
# "This PC is a $manufacturer PC!"

# if ($manufacturer -like "Dell*"){
#    write-host "this must be a dell!"
# }

# if ($manufacturer -like "Lenovo*"){
# & '\\dataserv\Installers\Device Setup\Scrips\Lenovo Commercial Vantage Install.bat.lnk'
# }

# if ($manufacturer -like "HP*"){
#    write-host "this must be a HP!"
# }

# $manufacturer = (Get-WmiObject -Class Win32_ComputerSystem).Manufacturer

# if ($manufacturer -eq "Dell") {
#   Write-Host 'Hello, aDelle'
# } 
# elseif ($manufacturer -eq "HP") {
#   Write-Host 'More like PP hehe'
# } 
# elseif ($manufacturer -eq "Lenovo") {
#   Write-Host 'I miss you :('
# }
# elseif ($manufacturer -eq "Microsoft") {
#   Write-Host 'Ok, zoomer.'
# }
#---------------------------------------------------------------------------
#     figuring out UWP installation
#Add-AppxProvisionedPackage -PackagePath "\\dataserv\installers\Execs\HEVC\Microsoft.HEVCVideoExtension_2.1.1803.0_neutral_~_8wekyb3d8bbwe.AppxBundle" -Online -SkipLicense
#Add-AppxProvisionedPackage -PackagePath "\\dataserv\Installers\Deployed\PDQ\HP\HP PC Hardware & Diagnostics Windows\AD2F1837.HPPCHardwareDiagnosticsWindows_2.6.2.0_x64__v10z8vjag6ke6.Appx" -Online -SkipLicense
#Add-AppxProvisionedPackage -PackagePath "\\dataserv\Installers\Deployed\PDQ\Surface Hub\Microsoft.SurfaceHub_74.6030.188.0_neutral_~_8wekyb3d8bbwe.Msixbundle" -Online -SkipLicense
#---------------------------------------------------------------------------
#     Changing Sleep Settings 
#powercfg.exe -change -monitor-timeout-ac 0
#powercfg.exe -change -monitor-timeout-dc 0
#powercfg.exe -change -disk-timeout-ac 0
#powercfg.exe -change -disk-timeout-dc 0
#powercfg.exe -change -standby-timeout-ac 0
#powercfg.exe -change -standby-timeout-dc 0
#powercfg.exe -change -hibernate-timeout-ac 0
#powercfg.exe -change -hibernate-timeout-dc 0
#powercfg.exe -change -standby-timeout-ac 0
#---------------------------------------------------------------------------
#                     Scrapped from The Setup.ps1
#Write-Host 'Big Boy Time!'
#Set-ExecutionPolicy Unrestricted -Scope LocalMachine -Force (This is redundunt and useless)

#Write-Host 'Installing .Net 3 and .Net 4'
#Ensure .Net is installed #(This was psuedo-needed by CBM but not anymore. Thx, Cal(IDK if he was the ones that fixed it)!)
#Add-WindowsCapability -Online -Name NetFx3
#Add-WindowsCapability -Online -Name NetFx4
#---------------------------------------------------------------------------
#                     Installs 
#Install-Script Update-InboxApp -Force

#nstall-Module PSWindowsUpdate -Force

#Add-WUServiceManager -MicrosoftUpdate -Force
#---------------------------------------------------------------------------
# #                 A really dumb joke
# Write-Host '#Back to smol boi... Bye Bye! 
# ⠀⢠⣼⠟⡱⢌⠦⡱⢌⠦⡱⢌⠦⡱⢌⠦⡱⢌⠦⡱⢌⠦⡱⢌⠦⡱⢌⠦⡱⢌⠦⡱⢌⠦⡱⡘⢬⠻⣿⣯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⢸⣿⢨⡑⢎⠲⡑⢎⡴⡑⢎⠲⣡⢎⠲⣑⠪⡔⡱⢊⡒⢥⢊⠖⡱⢊⡴⡑⢎⠲⣡⢎⠲⣡⢙⡂⢇⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⢸⣿⢂⡍⢮⡱⣙⢎⠶⣙⣎⣳⣱⣎⡳⢥⠳⣬⢑⠣⣜⢢⡍⣞⡱⣋⡶⣙⢎⡳⡱⢎⡳⡱⣎⡜⣦⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⢸⣿⠢⢜⢲⠹⣍⢎⡻⣍⢮⡱⡙⢎⡹⢻⣗⢮⣩⠳⣌⠳⡜⢦⡓⣍⠛⡭⢎⡱⡙⣍⠫⡝⢣⠝⡻⣿⣗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⢀⣾⣿⠘⡌⢆⠳⢌⠎⡴⣈⠦⢱⡉⢦⡑⢣⠜⣧⢖⡹⣌⢳⡋⢦⠱⢌⡓⡌⢦⡑⡱⢌⡱⢌⡃⢎⡅⣿⣏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⢾⣿⢋⡜⡸⢌⠣⢎⡜⡰⢡⠎⣅⠚⡤⣙⢢⡙⣷⢪⡕⢎⡯⡙⢤⢋⡒⡜⢸⠰⣌⠱⣊⣔⣣⣜⠢⡜⣽⡯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⣻⡿⠰⣌⠱⣊⠱⣊⠴⢡⢃⠞⣠⢋⡔⢢⠱⡘⢭⢓⡜⢣⠏⡱⢊⠦⠱⣌⢃⠎⡔⢣⠜⡯⣟⠪⡑⢆⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⢹⣿⡱⢄⠳⣌⣵⡢⡍⢦⡉⢞⡠⢣⠜⣡⠣⣙⠢⡍⡜⡡⢎⡑⢣⢎⡱⢌⡞⢼⡸⢥⢮⡷⣩⠑⡍⣆⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⢹⣿⢈⡳⣌⣿⣿⡞⣣⠝⣎⠶⣡⠚⡤⢓⣬⣷⣾⣶⣷⣊⠜⣡⠞⣬⠳⣜⠣⢞⡱⢟⡿⣄⠫⡔⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⢸⣿⢢⡑⢎⡹⣇⡟⣡⠛⣬⢚⡥⢫⡔⣹⣿⣿⣿⣿⣿⣿⡎⣥⢛⡴⢋⢆⡛⢴⢻⣞⠣⢆⢣⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠸⣿⣷⣜⢢⠱⡩⠽⣯⣟⣔⢫⡜⣣⠞⣸⣿⡟⣡⢋⣽⣿⡗⣬⠳⣌⠳⣌⣞⣿⢏⢣⡙⢬⣷⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠹⣿⣿⣆⢣⠱⡩⢔⠫⡿⣵⣟⡵⢚⢼⣿⡗⢤⠣⢼⣿⡗⣬⠓⣬⠶⡿⣏⠣⡜⢢⣙⣾⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠙⢿⣿⡇⢣⡑⢎⡱⢌⡱⢫⡔⢫⢼⣿⡏⢆⡹⢸⣿⣏⠶⣉⢆⢫⠱⡌⢲⣡⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠙⢻⢧⡜⢢⡑⠎⡔⢣⠜⣡⢺⣿⡏⠦⣑⢻⣿⣇⠳⡌⢎⢢⠓⣬⣷⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠉⢿⣶⡉⢞⢨⡑⢎⠴⣹⣿⣏⠒⡥⢺⣿⡇⡚⢬⡘⢦⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠨⣦⡕⣊⢶⣿⣿⡧⣉⠖⣹⣿⣧⣽⣦⣽⣿⡿⠛⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣾⣿⣿⣧⡑⢎⡜⠹⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣶⡌⡓⢤⠛⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣄⣤⠚⡤⡙⢿⣿⣿⣿⣿⣜⠦⡙⢤⡉⢇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⢛⠻⣭⢳⣔⠩⢆⡍⡛⢿⣿⣿⣿⣵⣦⡙⣌⣆⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⡍⠲⣄⢻⣿⣷⣊⡴⣉⠖⣘⢻⣿⣿⣿⣿⣾⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⢀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠿⣧⡓⡌⢦⡙⢿⣿⣿⣷⡜⢤⣻⣿⣿⣿⣿⣿⡿⢿⣿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⡘⢆⡒⢤⠒⣄⠲⡰⢌⠲⢌⡒⢤⡀⢀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠿⣜⡦⡘⢦⡙⢿⣿⣿⣿⣿⣿⣿⡟⣋⠳⢌⢣⡙⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣦⣝⣦⣍⠦⡙⢤⠣⡑⢎⡱⢎⡜⢢⡑⢎⠦⣀⠖⣀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣷⣽⣂⠜⡢⢆⡹⣻⣿⠟⡣⠜⡤⣋⡾⠆⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡿⣿⣿⣿⠛⡤⣙⢢⠱⣉⠦⣙⠮⣜⢣⣜⣣⡞⣤⢋⠴⣉⠶⣶
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⢿⣿⣮⣵⣮⣾⣷⣭⢎⡱⣉⠖⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⠣⡜⢤⠩⣌⠳⡰⢡⠎⡱⢌⠲⣍⠞⣬⣷⣿⢿⣿⣿⣎⠦⣑⠪⡅
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⠣⢜⣂⠳⣄⢣⡑⢣⢎⡱⢎⡳⣌⢻⣿⣯⠙⣌⢻⣿⣇⠚⡤⢓⣬
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⡭⢒⡌⠲⢌⠦⣙⢎⢮⡱⢋⠶⡩⢞⣿⣯⠜⠤⣛⣿⣧⣟⣶⣿⠞
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢽⡌⡡⢎⡱⢊⠖⡩⢎⠲⣉⠇⣎⠱⣊⣿⣷⢈⠳⣸⣿⣿⣿⠟⠁⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡜⢧⠣⢍⡜⡡⢎⣵⣬⣞⣤⣳⣽⣿⣯⢌⠓⣼⣿⣿⡇⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠂⢿⣶⣾⣷⣿⣿⣿⣿⣿⠟⠛⣿⣯⢢⡙⢴⣿⣿⡇⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣼⣿⠿⡗⢢⢍⠺⣿⣿⣿⣶⣄⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣼⣿⣿⢿⣿⡌⠳⢌⠣⡜⢢⠱⡩⣿⣿⣿⠿
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⢻⣿⣿⣿⣾⢫⠱⣉⢎⡱⢌⡃⠧⡑⣿⠟⠃⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢣⢒⣬⠟⢯⡐⢣⠓⣌⠲⢌⠆⠉⠐⠑⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣌⣿⣿⢠⡙⢢⠃⠀⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢪⠜⣿⣏⠣⡜⡁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ '
#---------------------------------------------------------------------------
#                  Installing AutoCAD/Removing Registry Keys
# Remove-Item -Path 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update\RebootRequired' -Recurse
#---------------------------------------------------------------------------
#                  HP Support Assistant
#'\\dataserv\Installers\Deployed\PDQ\HP\HP Support Assistant\Setup.exe'
#'\\dataserv\Installers\Deployed\PDQ\HP\HP Support Assistant\InstallHPSA.exe'/s /v /qn
#'\\dataserv\Installers\Deployed\PDQ\HP\HP Support Assistant\Setup.exe' /s /v /qn
#Add-AppxProvisionedPackage -PackagePath '\\dataserv\Installers\Deployed\PDQ\HP\HP Support Assistant\HPSA9x\3f002cfc52ec4a5f9e59948bdc595d7a.appxbundle' -Online -SkipLicense
#---------------------------------------------------------------------------
#                  Deleting MSTeams Old
#$MST = Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -match 'Microsoft Teams'}
#$MST.Uninstall()

#$MST = 'C:\Program Files (x86)\Teams Installer\Teams.exe'
#$MST --uninstall /s

# Function to uninstall Teams Classic
# function Uninstall-TeamsClassic($TeamsPath) {
#   if (Test-Path -Path "$TeamsPath\\Update.exe") {
#       try {
#           $process = Start-Process -FilePath "$TeamsPath\\Update.exe" -ArgumentList "--uninstall /s" -PassThru -Wait -ErrorAction SilentlyContinue
#       } catch {}
#   }
# }

# Get all user profiles from C:\Users and store them in UserProfiles variable, assign Teams Machinewide Installer location variable
$UserProfiles = Get-ChildItem "C:\Users\" -Directory
$InstallerPath = "C:\Program Files (x86)\Teams Installer"

# Loop through each user profile
foreach ($UserProfile in $UserProfiles) {
    $TeamsPath = Join-Path -Path $UserProfile.FullName -ChildPath "AppData\Local\Microsoft\Teams" # Path to uninstaller location
    $CachePath = Join-Path -Path $UserProfile.FullName -ChildPath "AppData" # Path to user AppData folder
    
    # Check if Teams is installed for the current user
    if (Test-Path (Join-Path -Path $TeamsPath -ChildPath "current\Teams.exe")) {

        # Stop Teams process
        Stop-Process -Name "Teams.exe" -Force -ErrorAction SilentlyContinue
        
        # Uninstall Teams silently
        Start-Process -FilePath (Join-Path -Path $TeamsPath -ChildPath "Update.exe") -ArgumentList "/uninstall /s" -Wait -PassThru

        # Remove Leftover Folders
        Remove-Item -Recurse -Force -Path $CachePath\Local\Microsoft\Teams -ErrorAction SilentlyContinue
        Remove-Item -Recurse -Force -Path $CachePath\Local\Microsoft\TeamsPresenceAddin -ErrorAction SilentlyContinue
        Remove-Item -Recurse -Force -Path $CachePath\Roaming\Microsoft\Teams -ErrorAction SilentlyContinue
    }
}

# Remove Teams Installer
if (Test-Path $InstallerPath) {
    Remove-Item -Recurse -Force -Path $InstallerPath -ErrorAction SilentlyContinue # Since it is outside the UserProfile loop, this will run regardless of profile installations.
}

#---------------------------------------------------------------------------
#                  Switches