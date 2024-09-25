param (
    [string]$ClientId,
    [string]$ClientSecret,
    [string]$TenantId,
    [string]$GitHubPat
)
$WebsiteLanguages = @('de','en')
$Scope = "https://storage.azure.com/.default"
$TokenEndpoint = "https://login.microsoftonline.com/$tenantId/oauth2/v2.0/token"
$Body = @{
    client_id     = "$ClienId"
    scope         = "$Scope"
    grant_type    = "client_credentials"
    client_secret = "$ClientSecret"
}
$Body = $Body | ConvertTo-Json
Write-Jost($Body)
$Response = Invoke-RestMethod -Method Post -Uri $TokenEndpoint -Body $Body -ContentType "application/json"

$AccessToken = $Response.access_token
$StorageAccountName = "belwareapps"
$ContainerUrl = "https://belwareapps.table.core.windows.net/MaintainedBCVersions"
$Headers = @{
    Authorization = "Bearer $accessToken"
    "x-ms-version" = "2020-04-08"
    "Accept" = "application/json;odata=nometadata"
}
$Response = Invoke-RestMethod -Uri $ContainerUrl -Method Get -Headers $Headers

$BcVersionList = $Response.value | ConvertTo-Json
$BcVersions = @()
foreach ($BcVersion in $BcVersionList){
    $BcVersions += $BcVersion.PartitionKey
}
$SortedVersions = $BcVersions | ForEach-Object { [System.Version]$_ } | Sort-Object -Descending

foreach ($Version in $sortedVersions){
    $DownloadPageContent += "#### $Version`n"
    $TableName = "AppVersions"
    $StorageTable = Get-AzStorageTable -Name $tableName -Context $StorageContext
    $CloudTable = $storageTable.CloudTable
    $TableFilter = "(RowKey eq '${Version}')"
    $AppVersions = Get-AzTableRow -Table $CloudTable -CustomFilter $TableFilter
    foreach($AppVersion in $AppVersions) {
        $FormattedAppName = $($AppVersion.PartitionKey.Replace(' ','%20'))
        $BcVersionNumber = $($AppVersion.RowKey)
        $DownloadPageContent += "[$($AppVersion.PartitionKey)](https://belwareapps.blob.core.windows.net/apps/$BcVersionNumber/$FormattedAppName/${BcVersionNumber}_${FormattedAppName}_$($AppVersion.AppVersion)_RT.app)`n"
    }
}

$Base64DownloadPageContent = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($DownloadPageContent))
foreach ($WebsiteLanguage in $WebsiteLanguages){
    $ResponseMessage = ConvertFrom-Json(curl -Uri "https://api.github.com/repos/ChristianFloecklbauer/New-Docs-Test/contents/content/${WebsiteLanguage}-${WebsiteLanguage}/Apps/Downloads/_index.md" -Method Get -H @{"Authorization"= "Bearer $GitHubPat"})
    $RequestBody = @"
    {
      "message": "Updated Download Page ${WebsiteLanguage}",
      "committer": {
        "name": "Power Automate Flow",
        "email": "admin@belware.de"
      },
        "content": "${Base64DownloadPageContent}",
        "sha": "$($ResponseMessage.sha)"
    }
"@
  $Response =  curl -Uri "https://api.github.com/repos/ChristianFloecklbauer/New-Docs-Test/contents/content/${WebsiteLanguage}-${WebsiteLanguage}/Apps/Downloads/_index.md" -Method Put -H @{"Authorization"= "Bearer $GitHubPat"} -Body $RequestBody
  $Response
}

