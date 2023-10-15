echo Installing requirements for installation 

wget https://qemu.weilnetz.de/w64/2023/qemu-w64-setup-20230407.exe
qemu-w64-setup-20230629.exe
wget https://raw.githubusercontent.com/acidanthera/OpenCorePkg/master/Utilities/macrecovery/macrecovery.py

echo Done!

echo Downloading MacOS
python3 macrecovery.py -b Mac-4B682C642B45593E -m 00000000000000000 download

echo Preparing drive 
"C:\Program Files\qemu\qemu-img.exe" convert -O vmdk -o compat6 com.apple.recovery.boot\BaseSystem.dmg recovery.vmdk

echo Patching VMWare [Please close VMWare Workstation or Player]
timeout /5

wget https://raw.githubusercontent.com/paolo-projects/unlocker/master/win-install.cmd
win-install.cmd 

echo Done!

echo All set, launch macOS 10.15.vmx from the folder and add Recovery.vmdk along with installtion vmdk.






