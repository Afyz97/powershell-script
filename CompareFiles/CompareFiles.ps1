$fileA = Read-Host "File A"

$fileB = Read-Host "File B"

if((Get-Item $fileA).length -gt (Get-Item $fileB).length) {
Write-Host "File A"
}

elseif((Get-Item $fileB).length -gt (Get-Item $fileA).length) {
Write-Host "File B"
}

Else {
Write-Host "Both file has same size"
}