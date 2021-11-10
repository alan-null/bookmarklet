Clear-Host
Push-Location $PSScriptRoot

Get-ChildItem -Path .\dist -Filter "*.js" -Recurse | % {
    $path = $_.FullName
    $name = $_.Name
    $code = Get-Content $path

    "- <a href=""$code"">$name</a>"
}
Pop-Location