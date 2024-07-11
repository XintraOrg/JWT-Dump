<#
.SYNOPSIS
Extracts JWT strings from a procdump file and parses the JWT tokens.

.DESCRIPTION
This script reads a procdump file, extracts JWT strings, and then decodes and parses the JWT tokens.

Requirements:
Install-Module -name JWTDetails
https://github.com/darrenjrobinson/JWTDetails

.PARAMETER ProcdumpFilePath
The path to the procdump file.

.EXAMPLE
.\Get-JWTFromProcDump.ps1 -ProcdumpFilePath "C:\path\to\your_procdump.dmp"
#>

param (
    [Parameter(Mandatory = $true)]
    [string]$ProcdumpFilePath
)

# Step 1: Extract JWT strings from the procdump file

$jwtStrings = (Select-String -Pattern 'eyJ\w+\.\w+\.[\w_-]+' -Path $ProcdumpFilePath).Matches.Value


# Step 2: Process each extracted JWT string

$tokendata = @()
foreach ($jwtString in $jwtStrings) {
	Write "--------------- Potential Token Found ---------------"
	Write $jwtString
	Write "---------- Attempted Parsed Token Details -----------"
	$token = Get-JWTDetails $jwtString 
	$tokendata += $token.aud
	Write $token

}

$c = $tokendata.Count

$tokendata = $tokendata | sort -unique

Write "---------------------- Summary ----------------------"
Write "Found $c potential JWTs!"
Write "Audiences found:"
foreach ($t in $tokendata) {
	Write $t
}
