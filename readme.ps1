Clear-Host
Push-Location $PSScriptRoot

Get-ChildItem -Path .\dist | % {
    $category = $_.Name
    "#### $category"
    Get-ChildItem $_.FullName  -Filter "*.js" -Recurse | %{
        $path = $_.FullName
        $name = $_.Name.Replace($_.Extension, [string]::Empty)
        $code = Get-Content $path
        "- <a href=""$code"">$name</a>"
    }
}
Pop-Location