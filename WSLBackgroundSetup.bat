cd /d %~dp0
bash -c "sudo apt update && sudo do-release-upgrade -d "
copy .\runHidden.vbs C:\
.\vcxsrv_setup.bat
schtasks /create /TN "VcxSrv" /XML ".\VcxSrv.xml"
schtasks /Run /TN "VcxSrv"
bash -c "./ssh_setup.sh"
schtasks /create /TN "WSL SSH" /XML ".\WSL SSH.xml"
schtasks /Run /TN "WSL SSH"

