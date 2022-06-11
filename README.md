# SapphireReleases
This repository contains the SMU/Sapphire binary updates, various documents, and some miscalenous scripts and programs to assist in operating the SapphireMini.
## Updating the firmware on a Sapphire
To update the firmware (or to revert to an older version):
1. Download the *.uf2 file of interest
2. Connect the Sapphire to the USB port of your computer
3. Depress the RESET switch on the sapphire twice with about 1/2 second between presses.  To fast will fail, and too slow will fail.  If the double press succeeds, the last red LED will glow with a slighly wavering steady glow until you perform the next step.
4. Open the disk drive GACBOOT which should appear on your computer and drag the *.uf2 file onto it
5. Once the GACBOOT drive closes, the Sapphire will automatically reboot and run the new code

If the PATCHLEVEL of the loaded firmware differs from what was previously running, any saved configurations (other than the serial number) will be wiped and set to the defaults in the loaded code.  You can always reset them by adding a config.cfg file to the SD card.

