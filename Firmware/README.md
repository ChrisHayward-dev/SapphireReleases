# Sapphire Binaries

## test_DLHR_Read.uf2 
Simple test of DLHR differential pressure sensor.  This firmware simply reads
the sensor and prints the sample to the screen.  I usually use it with the 
Arduino IDE in plot mode.
## MiniLogger.5.2.10.rc3.uf2
### Defaults:
  1. 128 SPS
  2. 1 Hour GPS scan
  3. 15 min max GPS search
  4. BDF, BDE, BDK, BDL channels
### Fixes:
1. Added compile timestamp to *log file
2. Inverted BDF to match BDE (correct pressure sign)
3. Corrections to startup.c to correct lockup problem with FRAM
