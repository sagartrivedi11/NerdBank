Push-Location $PSScriptRoot
try {
    Write-Host "Running 'dotnet tool restore'"
    Invoke-Expression "dotnet tool restore"
    if ($LASTEXITCODE -ne 0) {
        throw "Failed to restore .NET CLI tools. 'dotnet tool restore' completed with exit code $LASTEXITCODE"
    }
}
finally {
    Pop-Location
}
