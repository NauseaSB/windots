# --- 1. Oh-My-Posh ---
oh-my-posh --config 'https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/material.omp.json' init pwsh | Invoke-Expression

# --- 2. Chocolatey Setup ---
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# --- 3. Custom Functions ---
function spice-up {
    Write-Host "Backing up..." -ForegroundColor Cyan
    spicetify backup
    
    Write-Host "Upgrading..." -ForegroundColor Cyan
    spicetify upgrade
    
    Write-Host "Restore & Apply..." -ForegroundColor Cyan
    spicetify restore backup apply
    
    Write-Host "Done! your spotify is ready" -ForegroundColor Green
}

function newfile {

}

# function chris-tools { irm "christitus.com/win" | iex }

# --- 4. Startup Commands ---
fastfetch
