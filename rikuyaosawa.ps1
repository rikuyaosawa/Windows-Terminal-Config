oh-my-posh init pwsh --config ~/.config/powershell/rikuyaosawa.omp.json | Invoke-Expression

# configure autocomplete
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# set terminal icons
Import-Module Terminal-Icons

# aliases
Set-Alias v nvim # open neovim
Set-Alias st start # open windows file explorer
Set-Alias g git
Set-Alias c clear
Set-Alias studio 'C:\AnypointStudio\AnypointStudio.exe'
Set-Alias sakura 'C:\Program Files (x86)\sakura\sakura.exe'
Set-Alias post 'C:\Users\RikuyaOsawa\AppData\Local\Postman\Postman.exe'
Set-Alias edge 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe'

# utilities
function touch ($command) { # emulate Linux command 'touch'
    New-Item -Path $command -ItemType File | out-null && Write-Host Created $command
}

function gfs ($command) { # execute git fetch and status
  git fetch && git status
}

function gd ($command) { # copy the current date and time and echo the result
  (Get-Date -Format "yyyy-MM-ddTHH:mm:ss") | clip && echo (Get-Date -Format "yyyy-MM-ddTHH:mm:ss")
}

function path ($command) { # copy the current directory path and echo the result
  (Get-Location).Path | clip && echo (pwd)
}
