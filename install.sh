#!/bin/sh

sudo apt upgrade
sudo apt update

#INSTALL DEPENDENCIES

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

#CHANGE WLS 2
wsl --set-default-version 2
Wsl –set-version &lt;distribución&gt; 2
wsl --list –verbose

#INSTALL MAVEN
sudo apt install maven
mvn --version

