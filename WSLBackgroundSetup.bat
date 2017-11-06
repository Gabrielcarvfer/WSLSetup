cd /d %~dp0
copy .\runHidden.vbs C:\
.\vcxsrv_setup.bat
bash -c "./ssh_setup.sh"
schtasks /create /TN WSLBackground /XML .\WSLBackground.xml
schtasks /Run /TN WSLBackground

