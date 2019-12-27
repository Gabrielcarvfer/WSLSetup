bash -c "wget https://ufpr.dl.sourceforge.net/project/vcxsrv/vcxsrv/1.20.5.1/vcxsrv-64.1.20.5.1.installer.exe"
bash -c "echo export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0 >> ~/.test" 
vcxsrv-64.1.20.5.1.installer.exe /s
