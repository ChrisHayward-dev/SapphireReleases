# Sapphire Binaries
## GPS_Serial.uf2
This will put the GPS into transparent mode allowing one to run ublox U-center 
software to configure or test the GPS
## usbdrive*wboot.uf2
This will attach the SD card as a USB drive allowing one to examine or edit the
files on the micro SD card.  Ejecting the USB drive will set the Sapphire back
to boot mode to allow another program (generally the MiniLogger* to be loaded)
##update-bootloader-sapphire-mini*uf2
This will update the bootloader to the current version which is more reliable.  It will also
provide an index.htm file reference that points to the github release.
## test_DLHR_Read.uf2 
Simple test of DLHR differential pressure sensor.  This firmware simply reads
the sensor and prints the sample to the screen.  I usually use it with the 
Arduino IDE in plot mode.
## MiniLogger.5.4.*.nousb.uf2
### Defaults:
	If run with a SD card without a config.jsn file, the program will build
	a template with the defaults
### Fixes:
	If run with a usb serial port connection, the many fixes will be listed
