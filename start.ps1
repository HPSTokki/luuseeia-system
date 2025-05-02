# Ensure dependencies are installed for FRONTEND
if (-Not (Test-Path "FRONTEND\node_modules")) {
    Write-Host "Installing frontend dependencies..."
    Push-Location "FRONTEND"
    npm install
    Pop-Location
}

# Ensure dependencies are installed for BACKEND
<#
if (-Not (Test-Path "BACKEND\node_modules")) {
    Write-Host "Installing backend dependencies..."
    Push-Location "BACKEND"
    npm install
    Pop-Location
}
#>

# Run both frontend and backend in parallel with live terminal output
Write-Host "Starting frontend and backend..."

# Start Frontend
Start-Process -NoNewWindow -WorkingDirectory "$PSScriptRoot\FRONTEND" -FilePath "npm" -ArgumentList "run", "dev"

<#
# Start Backend (uncomment to enable)
Start-Process -NoNewWindow -WorkingDirectory "$PSScriptRoot\BACKEND" -FilePath "npm" -ArgumentList "run", "dev"
#>
