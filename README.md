Sometime in late 2025 an update (Either to steam or to the Switch 2 Pro Controller Firmware) broke steam-input for the Switch 2 Pro Controller over USB. This simple script will fix it.  
I've additionally included a .desktop file for ease of use, since on immutable distributions it will need to be run at each boot.


#Setup  
Copy fixSwitch2ProCon.sh into ~/.scripts
Copy 'Use Switch 2 Controller.desktop' to your desktop, or wherever else you keep your application launcher files.


#Usage  
Double click (or execute with your preferred method) the .desktop file, this should prompt you with a polkit request for your sudo password. Once you click 'Ok' the relevant files will be silently patched and you're ready to sync your controller by plugging it in and holding the 'Sync' button near the USB port.


#Additional  
If you'd like to verify that everything worked correctly, you can run "cat /usr/lib/udev/rules.d/60-steam-input.rules | grep 057e | grep 2069"
If you see any output at all, everything worked!
