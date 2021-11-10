Clear-Host
Push-Location $PSScriptRoot

$yuicomp = (Get-Item ".\jar\yuicompressor-2.4.8.jar").FullName

Remove-Item 'dist' -Recurse -Force
Copy-Item .\scripts -Destination 'dist' -Recurse

Get-ChildItem -Path .\dist -Filter "*.js" -Recurse | % {
    $path = $_.FullName
    $name = $_.Name

    Write-Host "Processing $path" -ForegroundColor Green
    Push-Location $_.Directory.FullName
    java -jar $yuicomp $name -o $name >> $null
    $code = Get-Content $name
    $escapedCode = [system.uri]::EscapeUriString("(function(){${code}})()")
    $result = "javascript:$escapedCode"
    Set-Content -Value $result -Path $name -NoNewline
    Pop-Location
}
Pop-Location