@echo off
echo Installing requirements for installation 

curl -O https://raw.githubusercontent.com/acidanthera/OpenCorePkg/master/Utilities/macrecovery/macrecovery.py
python macrecovery.py -b Mac-937A206F2EE63C01 -m 00000000000000000 download
echo Downloaded macOS!

echo Creating VMDK!
qemu-img.exe convert -O vmdk -o compat6 com.apple.recovery.boot\BaseSystem.dmg recovery.vmdk

echo Done! 
echo Please add this VMDK to your MacOS VM 
