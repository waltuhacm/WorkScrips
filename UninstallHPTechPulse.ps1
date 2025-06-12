function Check-TechPulseEXE {
	$Reg = @( "HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{24CB35EB-F445-4061-8C3A-67D5631996C5}", "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\{24CB35EB-F445-4061-8C3A-67D5631996C5}" )
	$InstalledApps = Get-ItemProperty $Reg -EA 0
	
	if ($InstalledApps) {
		Write-Host "Found TechPulse setup.exe on system"
		return $true
	}
	else {
		Write-Host "Not found TechPulse setup.exe on system, will be looking for TechPulse MSI"
		return $false
	}
}

$exitCode = 0

if (Check-TechPulseEXE) {
	$dir = (${env:ProgramFiles(x86)}, ${env:ProgramFiles} -ne $null)[0]
	$filepath = "$dir\InstallShield Installation Information\{24CB35EB-F445-4061-8C3A-67D5631996C5}\setup.exe"
	
	Write-Host "Started uninstallation of TechPulse setup.exe..."
	$Uninstallexe = Start-Process $filepath -ArgumentList "-remove -silent" -WindowStyle Hidden -Wait -PassThru -ErrorAction SilentlyContinue
	
	Write-Host $Uninstallexe.ExitCode
	$exitCode = $Uninstallexe.ExitCode
	if ($Uninstallexe.ExitCode -eq 0) {
		Write-Host "Uninstallation of TechPulse setup.exe is successful."
		[Environment]::Exit($exitCode)
	}
	else {
		Write-Host "Uninstallation of TechPulse setup.exe is failed."
	}
}
else {
	$TMprodcode = (Get-WmiObject -Class Win32_Product | Where-Object Name -Match "HP TechPulse").IdentifyingNumber

	if ($TMprodcode) {
		Write-Host "Found TechPulse MSI on system. Uninstalling..."
		
		$Uninstallmsi = Start-Process "msiexec.exe" -ArgumentList "/x $TMprodcode /qn" -WindowStyle Hidden -Wait -PassThru -ErrorAction SilentlyContinue
		Write-Host $Uninstallmsi.ExitCode
		$exitCode = $Uninstallmsi.ExitCode
		if ($Uninstallmsi.ExitCode -eq 0) {
			Write-Host "Uninstallation of TechPulse MSI is successful."
			[Environment]::Exit($exitCode)
		}
		elseif ($exitCode -eq 1618) {
			Write-Host "Another MSI Installer is running. Wait for the other application to finish and retry after sometime"
			[Environment]::Exit($exitCode)
		}
		else {
			Write-Host "Uninstallation of TechPulse MSI is failed."
		}
	}
	else {
		Write-Host "Not found TechPulse MSI on system"
	}
}

$TAprodcode = (Get-WmiObject -Class Win32_Product | Where-Object Name -Match "HP Touchpoint Analytics Client").IdentifyingNumber

if ($TAprodcode) {
	Write-Host "Found TouchPoint Analytics MSI on system. Uninstalling..."

	$Uninstallmsi = Start-Process "msiexec.exe" -ArgumentList "/x $TAprodcode /qn" -WindowStyle Hidden -Wait -PassThru -ErrorAction SilentlyContinue
	Write-Host $Uninstallmsi.ExitCode
	$exitCode = $Uninstallmsi.ExitCode
	if ($Uninstallmsi.ExitCode -eq 0) {
		Write-Host "Uninstallation of TouchPoint Analytics MSI is successful."
	}
	elseif ($exitCode -eq 1618) {
		Write-Host "Another MSI Installer is running. Wait for the other application to finish and retry after sometime"
		[Environment]::Exit($exitCode)
	}
	else {
		Write-Host "Uninstallation of TouchPoint Analytics MSI is failed."
	}
}
else {
	Write-Host "Not found TouchPoint Analytics MSI on system"
}

$TADepprodcode = (Get-WmiObject -Class Win32_Product | Where-Object Name -Match "HP Touchpoint Analytics Client - Dependencies").IdentifyingNumber

if ($TADepprodcode) {
	Write-Host "Found TouchPoint Analytics Dependencies MSI on system. Uninstalling..."

	$Uninstallmsi = Start-Process "msiexec.exe" -ArgumentList "/x $TADepprodcode /qn" -WindowStyle Hidden -Wait -PassThru -ErrorAction SilentlyContinue
	Write-Host $Uninstallmsi.ExitCode
	$exitCode = $Uninstallmsi.ExitCode
	if ($Uninstallmsi.ExitCode -eq 0) {
		Write-Host "Uninstallation of TouchPoint Analytics Dependencies MSI is successful."
	}
	elseif ($exitCode -eq 1618) {
		Write-Host "Another MSI Installer is running. Wait for the other application to finish and retry after sometime"
		[Environment]::Exit($exitCode)
	}
	else {
		Write-Host "Uninstallation of TouchPoint Analytics Dependencies MSI is failed."
	}
}
else {
	Write-Host "Not found TouchPoint Analytics Dependencies MSI on system"
}

Write-Host "Exiting..."
[Environment]::Exit($exitCode)