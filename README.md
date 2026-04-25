#Pixel Battery Cycle Spoofer (Android 16 Ready)
A lightweight KernelSU module designed to spoof the battery cycle count and bypass the "Battery replacement recommended" warnings on Pixel devices running Android 16 (DP/Preview).

##🚀 Overview

Android 16 introduced stricter controls over battery health reporting. Traditional echo commands to /sys/class often fail due to read-only restrictions. This module uses the mount --bind method to overlay a fake value onto the system's battery stats, forcing the OS to read a healthy cycle count.

##✨ Features

Bypass Restrictions: Uses mount --bind to trick the kernel and system services.
Android 16 Compatible: Tested on Android 16 (CP1A) Developer Previews.
Zero Persistence: Changes are applied at boot via service.sh and do not modify your actual hardware data permanently.
KSU Native: Built specifically for KernelSU's secure environment.

##🛠️ How it Works

The module executes a boot script that:
Waits for the system to fully boot (sys.boot_completed).
Creates a temporary "fake" file in /dev/.
Binds that fake file over the real /sys/class/power_supply/battery/cycle_count.

##📂 Installation

Download the module ZIP from the Releases section.
Open the KernelSU app.
Go to the Modules tab.
Click Install and select the ZIP file.
Reboot your devNotes

##⚠️ ImportantLicense

Visual Only: This is a software-level spoof. It does not physically repair or improve your battery capacity.
Warning Persistence: If the "Replacement Recommended" banner persists, you may need to clear the storage of the Device Health Services and Turbo apps after installing the module.

##📜 License

MIT License - Feel free to modify and distribute! and distribute!
