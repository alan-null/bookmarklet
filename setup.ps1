$jdkFolder = [System.IO.Path]::Combine((Get-Location).Path, "openjdk")
$jdkArchive = [System.IO.Path]::Combine($jdkFolder, "openjdk.zip")
$jdkUrl = "https://download.java.net/java/GA/jdk23.0.2/6da2a6609d6e406f85c491fcb119101b/7/GPL/openjdk-23.0.2_windows-x64_bin.zip"
$closureUrl = "https://repo1.maven.org/maven2/com/google/javascript/closure-compiler/v20240317/closure-compiler-v20240317.jar"

# Test if OpenJDK is already downloaded and extracted
if ((Test-Path $jdkFolder) -and (Get-ChildItem $jdkFolder | Where-Object { $_.Name -match "jdk" })) {
    Write-Host "OpenJDK is already downloaded and extracted."-ForegroundColor Green
    return
}

if (-not (Test-Path $jdkFolder)) {
    New-Item -ItemType Directory -Path $jdkFolder | Out-Null
}

# Download OpenJDK
Write-Host "Downloading OpenJDK to $jdkArchive..."
Invoke-WebRequest -Uri $jdkUrl -OutFile $jdkArchive

# Download Closure Compiler
Write-Host "Downloading Closure Compiler..."
Invoke-WebRequest -Uri $closureUrl -OutFile "jar\closure-compiler-v20240317.jar"

# Extract OpenJDK
Write-Host "Extracting OpenJDK..."
Expand-Archive -Path $jdkArchive -DestinationPath $jdkFolder -Force

Remove-Item -Path $jdkArchive -Force