# PowerShell script for installing skills globally on Windows
# Designed for AI Agent Training Course

$OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "          Global Skill Installer (Windows)         " -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan

# Target directory for global skills
$TargetDir = Join-Path $HOME ".gemini\config\skills"
$SourceDir = ".\.gemini\skills"

# Check if run from the repository root
if (-not (Test-Path $SourceDir)) {
    Write-Host "Error: .gemini/skills folder not found in current directory." -ForegroundColor Red
    Write-Host "Please run this script from the root of the 'myskill' repository." -ForegroundColor Yellow
    exit 1
}

Write-Host "Target Directory: $TargetDir" -ForegroundColor Cyan

# Create target directory if it doesn't exist
if (-not (Test-Path $TargetDir)) {
    Write-Host "Creating directory structure..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
}

# Copy all folders
Write-Host "Copying skills to global location..." -ForegroundColor Yellow
Copy-Item -Path "$SourceDir\*" -Destination $TargetDir -Recurse -Force

Write-Host "`n✓ All skills have been installed globally successfully!" -ForegroundColor Green
Write-Host "Installed Skills:" -ForegroundColor Green
Get-ChildItem -Path $TargetDir | Select-Object -ExpandProperty Name | ForEach-Object { Write-Host "  - $_" }
Write-Host "==================================================" -ForegroundColor Cyan
