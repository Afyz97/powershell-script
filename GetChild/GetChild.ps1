$folderPath = Read-Host "Type in your directory"
$directoryInfo = Get-ChildItem -Path $folderPath | Measure-Object


if ($directoryInfo.count -eq 0) {
Write-Host "Empty"
}

else {
Get-ChildItem -Path $folderPath -Directory -Name | sort date -Descending
}

