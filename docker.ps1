
wsl --install -d Ubuntu

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

wsl.exe -l -v

wsl.exe --set-version Ubuntu 2

wsl.exe --set-default-version 2