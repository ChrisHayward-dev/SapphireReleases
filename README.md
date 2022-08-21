# SapphireReleases
This repository contains the SMU/Sapphire binary updates, various documents, and some miscalenous scripts and programs to assist in operating the SapphireMini.  Current release https://github.com/ChrisHayward-dev/SapphireReleases/releases/tag/2022_08_21
## Updating the firmware on a Sapphire.  
In general you'd want to download a release rather than items in the main branch.  I try to coordinate the documentation, tools, and firmware for the releases.  The state of the main branch is ephemeral and often the firmware will be ahead of the documentation.
To update the firmware (or to revert to an older version):
1. Download the *.uf2 file of interest (in the Firmware directory)
2. Connect the Sapphire to the USB port of your computer
3. Depress the RESET switch on the sapphire twice with about 1/2 second between presses.  To fast will fail, and too slow will fail.  If the double press succeeds, the last red LED will glow with a slighly wavering steady glow until you perform the next step.
4. Open the disk drive GACBOOT which should appear on your computer and drag the *.uf2 file onto it
5. Once the GACBOOT drive closes, the Sapphire will automatically reboot and run the new code

If the PATCHLEVEL of the loaded firmware differs from what was previously running, any saved configurations (other than the serial number) will be wiped and set to the defaults in the loaded code.  You can always reset them by adding a config.cfg file to the SD card.
## Scripts
1. extractLog.pl: reads a series of Sapphire Miniseed files and outputs JSON formatted logs.  Call as extractLog.pl *.msd.  You should not mix log files from more than one run as it will get very confused

## Documents
1. Datasheet.pdf: a one page (front and back) datasheet for the Sapphire as designed.  Not all the features were implemented.

## Matlab
1. rdmseed.m: Matlab subroutine to read Sapphire mseed files.  This is extracted from the Matlab community contributed files, but corrected so that it works with the Sapphire files (the original had a bug)
2. SapphireQuickLook.mlx: Matlab notebook to read a series of Sapphire miniseed files and analyze them.  This was used during testing, but may have some utility for matlab users.
3. CurrentRanger.mlx: This matlab notebook is used to measure the power consumption of a Sapphire in order to estimate runtime.

