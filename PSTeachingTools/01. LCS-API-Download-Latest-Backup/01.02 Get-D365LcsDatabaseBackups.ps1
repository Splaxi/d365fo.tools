<#
."C:\Temp\d365fo.tools\_teaching-scripts_\01.02 Get-D365LcsDatabaseBackups.ps1"
#>
$fileName = "01.02 Get-D365LcsDatabaseBackups.txt"

cd \
Import-Module C:\Temp\PS\PSTeachingTools -Force

# NOT TO BE STORED
##Is switched to non-working secrets
Get-D365LcsApiToken -ClientId "e70cac82-6a7c-4f9e-a8b9-e707b961e986" -Username "Lcs-Automation@contoso.com" -Password "fT1DHcLdeTWC9aumugHr" -LcsApiUri "https://lcsapi.lcs.dynamics.com" | Set-D365LcsApiConfig -ProjectId "123456789" -ClientId "e70cac82-6a7c-4f9e-a8b9-e707b961e986"

# NOT TO BE STORED

$basePath = "C:\temp\d365fo.tools\_teaching-scripts_"

$filePath = Join-Path -Path $basePath -ChildPath $fileName
Update-FormatData -PrependPath "C:\Temp\d365fo.tools\_teaching-scripts_\CustomViewDefinitions\D365FOTools.demo.format.ps1xml"
#Start-TypedDemo -File 'C:\Temp\_summit-emea\01.00 Install-Module.txt' -Pause 40 -SilentRun
Start-TypedDemo -File $filePath -Pause 40 -RunMode "Execute" #-Verbose
do
{
    Write-Host "Press ESC or Q to exit ($fileName)"
    $key = [Console]::ReadKey($true)
    $value = $key.KeyChar
    $keyName = $key.Key
}
while ($value -notmatch 'q' -and $keyName -ne "Escape")