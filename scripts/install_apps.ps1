# Save this script as install_apps.ps1
# To run: open PowerShell as Administrator, navigate to the folder, then run:
#   powershell -ExecutionPolicy Bypass -File .\install_apps.ps1

# This bypasses execution policy for this run only

winget source update

# --- Enable WSL and prepare Ubuntu 22.04 LTS ---
Write-Host "Enabling WSL and Virtual Machine Platform features..."
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart -All | Out-Null
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart -All | Out-Null
wsl --set-default-version 2


$ids = @(
  "Canonical.Ubuntu.2204",              # Ubuntu 22.04 LTS for WSL (first launch completes user setup)

  "Elsevier.MendeleyReferenceManager", # Mendeley Reference Manager: tool for managing and citing research papers.
  "Mobatek.MobaXterm",                 # MobaXterm: terminal and SSH client with X11 server for remote computing.
  "MiKTeX.MiKTeX",                     # MiKTeX: LaTeX distribution for document preparation.
  "TeXstudio.TeXstudio",               # TeXstudio: IDE for creating LaTeX documents.
  "Microsoft.VisualStudioCode",        # Visual Studio Code: lightweight source code editor.
  "Git.Git",                           # Git for Windows: version control system for tracking changes in code.
  "Notepad++.Notepad++",               # Notepad++: advanced text/code editor.
  "Adobe.Acrobat.Reader.64-bit",       # Adobe Acrobat Reader: PDF viewer and annotator.
  "MathWorks.MATLAB",                  # MATLAB: numerical computing environment for engineering and science.
  "Kitware.ParaView",                   # ParaView: open-source scientific data visualization tool.
  "Anaconda.Anaconda3",                # Anaconda: Python/R distribution for data science and machine learning.
  # "GLUViz.GLU" removed because it's not available on WinGet, we'll handle separately.
  "Cisco.CiscoVPN",                     # Cisco VPN client: secure remote network access.
  "VideoLAN.VLC",                       # VLC Media Player: multimedia player supporting most audio/video formats.
  "WinSCP.WinSCP",                      # WinSCP: file transfer client supporting SFTP, SCP, and FTP.
  "Microsoft.WSL",                      # Windows Subsystem for Linux: allows running Linux distributions on Windows.
  "Canonical.Ubuntu.22.04"              # Ubuntu 22.04 LTS: Linux distribution for WSL.
)

foreach ($id in $ids) {
  Write-Host "Installing $id ..."
  winget install -e --id $id --silent --accept-package-agreements --accept-source-agreements
}

# Install GLUViz manually from URL since it's not in WinGet
if (Get-Command glueviz -ErrorAction SilentlyContinue) {
    Write-Host "GLUViz already appears to be installed, skipping download and install."
} else {
    $gluvizInstaller = "$env:TEMP\\glue_2024.03.1.exe"
    if (Test-Path $gluvizInstaller) {
        Write-Host "GLUViz installer already exists at $gluvizInstaller, skipping download."
    } else {
        Write-Host "Downloading GLUViz installer..."
        Invoke-WebRequest -Uri "https://glueviz.s3.amazonaws.com/installers/2024.03.1/glue%202024.03.1.exe" -OutFile $gluvizInstaller
    }
    Write-Host "Launching GLUViz installer..."
    Start-Process $gluvizInstaller -Wait
}

# Office (requires sign-in / license)
Write-Host "Installing Microsoft Office ..."  # Microsoft Office: Word, Excel, PowerPoint productivity suite.
winget install -e --id Microsoft.Office --accept-package-agreements --accept-source-agreements

Write-Host "All installations complete."

