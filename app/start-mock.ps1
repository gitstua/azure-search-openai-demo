$ErrorActionPreference = "Stop"

# Run from repo root so relative paths are stable.
Set-Location $PSScriptRoot
Set-Location ..

function Invoke-NpmOrExit {
    param(
        [string[]]$Arguments,
        [string]$FailureMessage
    )

    & npm @Arguments
    if ($LASTEXITCODE -ne 0) {
        Write-Host $FailureMessage
        exit $LASTEXITCODE
    }
}

Write-Host ""
Write-Host "Installing frontend packages"
Write-Host ""
Invoke-NpmOrExit -Arguments @("install", "--prefix", "app/frontend") -FailureMessage "Failed to restore frontend npm packages"

Write-Host ""
Write-Host "Installing mockbackend packages"
Write-Host ""
Invoke-NpmOrExit -Arguments @("install", "--prefix", "app/mockbackend") -FailureMessage "Failed to restore mockbackend npm packages"

Write-Host ""
Write-Host "Starting mock backend on http://127.0.0.1:50505"
Write-Host ""
$mockProcess = Start-Process -FilePath "npm" -ArgumentList @("--prefix", "app/mockbackend", "run", "dev") -PassThru -NoNewWindow

try {
    Write-Host ""
    Write-Host "Starting frontend dev server (Vite)"
    Write-Host ""
    & npm --prefix app/frontend run dev
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Failed to start frontend dev server"
        exit $LASTEXITCODE
    }
}
finally {
    if ($null -ne $mockProcess -and -not $mockProcess.HasExited) {
        Stop-Process -Id $mockProcess.Id -Force -ErrorAction SilentlyContinue
    }
}
