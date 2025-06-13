Write-Host 'Warming up and waking up...'

reg add 'HKLM\SOFTWARE\Policies\Hewlett-Packard\HP Touchpoint Manager\GPO\DisableOnlineCheck' /v State /t REG_SZ /d True /f

Install-Script Update-InboxApp

Install-Module PSWindowsUpdate

Add-WUServiceManager -MicrosoftUpdate

powercfg.exe -change -standby-timeout-ac 0

&'The Deletion.ps1'

function Prompt-AppInstall {
    do {
        $response = Read-Host 'Do you need to install applications? [y/n]'
        switch ($response.ToLower()) {
            'y' { return $true }
            'n' { return $false }
            default { Write-Host 'Please enter y or n.' }
        }
    } until ($response -match '^(y|n)$')
}

if (-not (Prompt-AppInstall)) {
    # Skip to update section
    Write-Host 'Skipping application installation...'
    goto UpdateSection
}
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

# Ask if this is a loaner laptop that needs VMWare
do {
    $input = Read-Host 'Is this going to be a loaner laptop? [y/n]'
    switch ($input.ToLower()) {
        'y' {
            & '\\dataserv\Installers\Device Setup\Scrips\VMWare Pro 17 Install.bat'
            $valid = $true
        }
        'n' {
            Write-Host 'Not a loaner, skipping VMware install.'
            $valid = $true
        }
        default {
            Write-Warning 'Invalid input. Please enter y or n.'
            $valid = $false
        }
    }
} until ($valid)
#--------------------------------------------------------------------------------
Write-Host 'Time to update!'

Get-AppxPackage | Update-InboxApp

Install-WindowsUpdate -MicrosoftUpdate -AcceptAll | Out-File 'C:\($env.computername-Get-Date -f yyyy-MM-dd)-MSUpdates.log' -Force

#-AutoReboot
#--------------------------------------------------------------------------------
Write-Host 'Last but not least, installing the base standard set of applications...'
& '\\dataserv\Installers\Device Setup\Scrips\Base Apps Install.bat'
#--------------------------------------------------------------------------------
Write-Host 'Bye Bye!'
Set-ExecutionPolicy Restricted -Scope LocalMachine -Force