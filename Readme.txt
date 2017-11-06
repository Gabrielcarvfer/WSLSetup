1) Run in PowerShell with administrator priviledges
	Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
2) Reboot
3) Download Ubuntu from https://www.microsoft.com/store/p/ubuntu/9nblggh4msv6
4) Open ubuntu and configure your UNIX user
5) Run any command prompt type bash + Enter or type bash + Enter on a path in Windows Explorer to open bash on that folder

From now on you can do on your own or install with a script.

To do on your own:
6) To run GUI programs, you'll need to install VcxSrv https://sourceforge.net/projects/vcxsrv/files/latest/download
7) To enable SSH to this machine, run the ssh_install.sh script
8) Copy runHidden.vbs to C:\ if you don't want consoles open while running GUI apps
9) To run automatically the X11 server and SSHD every time you boot into Windows, 
	you need to register a task for it (included in this repo as WSLBackground.xml)
		Install using "schtasks /create /TN WSLBackground /XML .\WSLBackground.xml" (without the quotes)
10) You can create .bat files as shortcuts to Linux X11 apps, 
	with something like ' C:\runHidden.vbs bash -c "DISPLAY=:0 xcalc" '
		You need to export the DISPLAY as the .bashrc is not read 
			when launched directly from Windows bash.exe

Installing with the script:
6) Run the WSLBackgroundSetup.bat with administrator rights