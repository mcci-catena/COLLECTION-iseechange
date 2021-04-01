Steps to install Catena as DFU device:

1. Zadig tool is required for programming Catena 4612, the tool can be downloaded from the link below:
	https://zadig.akeo.ie
	
2. Make sure BOOT0 and +VDD pins have been shorted and then Reset the Catena.

3. Open the Zadig tool and then Select "Options -> List All devices".

4. Select Unknown Device / STM32 BOOTLOADER from the device dropdown.

5. Select WinUSB (v6.1.7600.16385) as new driver

6. Click Replace Driver.