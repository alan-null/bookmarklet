Clear-Host
Push-Location $PSScriptRoot

$javaPath = ".\openjdk\jdk-23.0.2\bin\java.exe"

if (-Not (Test-Path $javaPath)) {
    Write-Host "OpenJDK not found. Please run setup.ps1 first." -ForegroundColor Red
    return
}

$closure_compiler = (Get-Item ".\jar\closure-compiler-v20240317.jar").FullName
$java = (Get-Item $javaPath).FullName

Remove-Item 'dist' -Recurse -Force
Copy-Item .\scripts -Destination 'dist' -Recurse

Get-ChildItem -Path .\dist -Filter "*.js" -Recurse | % {
    $path = $_.FullName

    Write-Host "Processing $path" -ForegroundColor Green
    $code = & "$java" -jar $closure_compiler --js $path
    $escapedCode = [system.uri]::EscapeUriString("(function(){${code}})()")
    $result = "javascript:$escapedCode"
    Set-Content -Value $result -Path $path -NoNewline
}
Pop-Location