﻿# Add all things you want to run after importing the main code

# Load Configurations
foreach ($file in (Get-ChildItem "$($script:ModuleRoot)\internal\configurations\*.ps1" -ErrorAction Ignore)) {
	. Import-ModuleFile -Path $file.FullName
}

# Load Scriptblocks
foreach ($file in (Get-ChildItem "$($script:ModuleRoot)\internal\scriptblocks\*.ps1" -ErrorAction Ignore)) {
	. Import-ModuleFile -Path $file.FullName
}

# Load Tab Expansion
foreach ($file in (Get-ChildItem "$($script:ModuleRoot)\internal\tepp\*.tepp.ps1" -ErrorAction Ignore)) {
	. Import-ModuleFile -Path $file.FullName
}

# Load Tab Expansion Assignment
. Import-ModuleFile -Path "$($script:ModuleRoot)\internal\tepp\assignment.ps1"

# Load License
. Import-ModuleFile -Path "$($script:ModuleRoot)\internal\scripts\license.ps1"

# Add the System.Web type
Add-Type -AssemblyName System.Web

# Add the System.Net.Http type
Add-Type -AssemblyName System.Net.Http