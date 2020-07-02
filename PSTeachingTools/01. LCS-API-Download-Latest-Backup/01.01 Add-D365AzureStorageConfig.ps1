<#
."C:\Temp\d365fo.tools\_teaching-scripts_\01.01 Add-D365AzureStorageConfig.ps1"
#>
$fileName = "01.01 Add-D365AzureStorageConfig.txt"

cd \
Import-Module C:\Temp\PS\PSTeachingTools -Force

$basePath = "C:\temp\d365fo.tools\_teaching-scripts_"

$filePath = Join-Path -Path $basePath -ChildPath $fileName
Update-FormatData -PrependPath "C:\Temp\d365fo.tools\_teaching-scripts_\CustomViewDefinitions\D365FOTools.demo.format.ps1xml"
function Add-D365AzureStorageConfig {
    param (
        [hashtable] $Parameters
    )
}

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