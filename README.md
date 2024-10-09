# windows-terminal-setup

TODO: https://hackernoon.com/setting-up-a-development-workflow-in-the-windows-terminal

## Required Installation
### Powershell
NOT Windows Powershell. Powershell can be installed via Microsoft Store.

### Nerd Fonts
### Terminal Tools
- Chocolatey: package manager
- z: directory jumper
```bash
Install-Module -Name z -Force
```
- Terminal Icons
```bash
Install-Module -Name Terminal-Icons
```
### Node
### Git
### Oh-My-Posh
```bash
choco install oh-my-posh
```
## Powershell Configuration from Scratch
(1) At user root, run the following commands:
```bash
cd .config
mkdir powershell && cd powershell
```
(2) Create a config file 
```bash
nvim user_profile.ps1
```
(3) Create a file for oh-my-posh theme
```bash
nvim [replace-with-username].omp.json
```
(4) Type in the following into PowerShell config:
```bash
oh-my-posh init pwsh --config ~/.config/powershell/[replace-with-username].omp.json | Invoke-Expression
```
Make sure to match the JSON file name with the file created in (3)<br>
<br>
(5) Set up Oh-My-Posh theme
- Visit [Oh-My-Posh website](https://ohmyposh.dev/docs/themes) and get theme (JSON)
- Paste the theme inside the file created in (3)
- At this point, the theme should be applied inside the terminal.
(6) Set up terminal autocomplete and history view
- paste the following lines inside Powershell config
```bash
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
```
(7) Add the following line to enable Terminal Icons
```bash
Import-Module Terminal-Icons
```
