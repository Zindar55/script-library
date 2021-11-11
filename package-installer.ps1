<#
.SYNOPSIS

AUTHOR: Austin Young
DESCRIPTION: Downloads the latest utilities from my perosnal script liberary.

#>
$app = "zinTools";

$WebClient = New-Object -TypeName System.Net.WebClient
$WebClient.Headers.Add('Authorization','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')
$uri = "https://github.com/Zindar55/script-library/tree/master/releases/ZinToolsV1.zip"
$targetPath = "C:/zinTools"
$WebClient.DownloadFile($uri, $targetPath)
[System.IO.Compression.ZipFile]::CreateFromDirectory('.\ZinToolsV1.zip','C:/zinTools/')
New-Item -Path "C:\" -Name "$app" -ItemType "directory"
Copy-Item -Path C:\$app\Tools -Destination %USERPROFILE%\Desktop