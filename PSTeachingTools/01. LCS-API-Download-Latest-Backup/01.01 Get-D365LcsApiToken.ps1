<#
."C:\Temp\d365fo.tools\_teaching-scripts_\01.01 Get-D365LcsApiToken.ps1"
#>
$fileName = "01.01 Get-D365LcsApiToken.txt"

cd \
Import-Module C:\Temp\PS\PSTeachingTools -Force

$basePath = "C:\temp\d365fo.tools\_teaching-scripts_"

$filePath = Join-Path -Path $basePath -ChildPath $fileName
Update-FormatData -PrependPath "C:\Temp\d365fo.tools\_teaching-scripts_\CustomViewDefinitions\D365FOTools.demo.format.ps1xml"

function Get-D365LcsApiToken {
    param (
    )
    
    $json = '{
        "token_type":  "Bearer",
        "scope":  "user_impersonation",
        "expires_in":  "3599",
        "ext_expires_in":  "3599",
        "expires_on":  "1593641358",
        "not_before":  "1593637458",
        "resource":  "https://lcsapi.lcs.dynamics.com",
        "access_token":  "eyJ0eXAiOiJKV1QiL...WoODVPW9kCuXsTc5O99Tw",
        "refresh_token":  "AQABAAAAAAAGV_bv..............bPaeYbjiAA",
        "id_token":  "eyJ0eXAiOiJKV1..................IiOiIxLjAifQ."
    }'

    $json | ConvertFrom-Json
}

function Set-D365LcsApiConfig {
    param (
    )
    
}

function Get-D365LcsDatabaseBackups {
    param (
        [Switch] $Latest
    )

    if ($Latest) {
        $json = '{
            "Id":  "aba5156e-5244-41ec-8356-c0396ab828ab",
            "ProjectId":  123456789,
            "OrganizationId":  123456789,
            "Name":  "Contoso-Supportbackup",
            "FileName":  "Contoso-Supportbackup.bacpac",
            "FileDescription":  null,
            "FileLocation":  "https://uswedpl1catalog.blob.core.windows.net/product-financeandoperations/5ed33c07-954e-4c19-b94e-2b13d7d88a96/FinanceandOperations-AX7ProductVersion-17-7f739b22-f257-4376-b4bc-e1320d0b5c0be87c4b82-03c0-4808-9be2-ff6b0dc82677?sv=2015-12-11\u0026sr=b\u0026sig=1gOX4nBKLhmZbc0tvdmzvk%2Bhd6oDu%2B4sHmiaUj8O%2BPQ%3D\u0026se=2020-07-02T21%3A16%3A40Z\u0026sp=r",
            "ModifiedDateTime":  "2020-06-05T08:36:37.947",
            "CreatedDateTime":  "2020-06-05T08:36:37.947",
            "CreatedByName":  null,
            "ModifiedByName":  null
        }'
    }
    else {
        $json = '[
        {
            "Id":  "aba5156e-5244-41ec-8356-c0396ab828ab",
            "ProjectId":  123456789,
            "OrganizationId":  123456789,
            "Name":  "Contoso-Supportbackup",
            "FileName":  "Contoso-Supportbackup.bacpac",
            "FileDescription":  null,
            "FileLocation":  "https://uswedpl1catalog.blob.core.windows.net/product-financeandoperations/5ed33c07-954e-4c19-b94e-2b13d7d88a96/FinanceandOperations-AX7ProductVersion-17-7f739b22-f257-4376-b4bc-e1320d0b5c0be87c4b82-03c0-4808-9be2-ff6b0dc82677?sv=2015-12-11\u0026sr=b\u0026sig=1gOX4nBKLhmZbc0tvdmzvk%2Bhd6oDu%2B4sHmiaUj8O%2BPQ%3D\u0026se=2020-07-02T21%3A16%3A40Z\u0026sp=r",
            "ModifiedDateTime":  "2020-06-05T08:36:37.947",
            "CreatedDateTime":  "2020-06-05T08:36:37.947",
            "CreatedByName":  null,
            "ModifiedByName":  null
        },
        {
            "Id":  "aba5156e-5244-41ec-8356-c0396ab828ab",
            "ProjectId":  123456789,
            "OrganizationId":  123456789,
            "Name":  "Contoso-UATbackup",
            "FileName":  "Contoso-UATbackup.bacpac",
            "FileDescription":  null,
            "FileLocation":  "https://uswedpl1catalog.blob.core.windows.net/product-financeandoperations/5ed33c07-954e-4c19-b94e-2b13d7d88a96/FinanceandOperations-AX7ProductVersion-17-7f739b22-f257-4376-b4bc-e1320d0b5c0be87c4b82-03c0-4808-9be2-ff6b0dc82677?sv=2015-12-11\u0026sr=b\u0026sig=1gOX4nBKLhmZbc0tvdmzvk%2Bhd6oDu%2B4sHmiaUj8O%2BPQ%3D\u0026se=2020-07-02T21%3A16%3A40Z\u0026sp=r",
            "ModifiedDateTime":  "2020-06-01T08:36:37.947",
            "CreatedDateTime":  "2020-06-01T08:36:37.947",
            "CreatedByName":  null,
            "ModifiedByName":  null
        }
    ]
    '
    }

    $json | ConvertFrom-Json
}

#Start-TypedDemo -File 'C:\Temp\_summit-emea\01.00 Install-Module.txt' -Pause 40 -SilentRun
Start-TypedDemo -File $filePath -Pause 40 -RunMode "Execute" #-Verbose
do {
    Write-Host "Press ESC or Q to exit ($fileName)"
    $key = [Console]::ReadKey($true)
    $value = $key.KeyChar
    $keyName = $key.Key
}
while ($value -notmatch 'q' -and $keyName -ne "Escape")