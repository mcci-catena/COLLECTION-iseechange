Steps To Load/upgrade the Firmware into Weradiate's Catena 4618m201 sensor:

0. Carry out your laptop, jumper, USB micro (also batteries) to the Catena 4618m201 sensor and open the lid.

1. Extract the given file into a folder of your choice.

2. Connect your Catena 4618 to the laptop via Micro USB cable.

3. Short the VDD pin (JP1-15) and Boot0 pin (JP1-1) using jumper clip wire (Catena 4618 pinout: https://github.com/mcci-catena/HW-Designs/blob/master/Boards/Catena-4611_4612/Catena-4611_4612_4617_4618_4618-M201_Pinout.png)

4. Press the 'RESET' button to enter 'Boot Mode / DFU mode'.

5. Check Device Manager on Windows to see up a STM32 Bootloader. On Linux, use command "lsusb" in Terminal. On a mac, there is no Device Manager but you can use [apple]->System Properties.

6. Use command prompt/Terminal based upon the OS you use. You can follow the below steps for different OS:

	Windows:
	
	a. Click on START, type in CMD and open the Command Prompt.
	
	b. Navigate to the location of the extracted folder in the Command Prompt window. To do this, type 'cd <SPACE> <Destination Folder>' and press 'Enter'. This will allow command prompt to navigate to the specific folder.
	
	C. Install the Catena board with bootloader driver using README in "drivers/windows".
	
	d. Run the script using command "update-windows.bat"

	Linux:
	
	a. Open the Extracted folder, Right click and select option "Open in Terminal".
	
	b. Install the linux driver as a one-time process, by following README in "drivers/linux".
	
	C. If you have 64-bit version of Linux, you have to install 32-bit library support:
		i) sudo apt-get install ia32-libs (Ubuntu 12.04 LTS) (or) sudo apt-get install lib32z1 (Ubuntu 13.04 LTS and later)
		ii) apt-get update
	
	d. Run the script using command "sudo ./update-linux"
	
	macOS:
	
	a. Open the Terminal.
	
	b. Navigate to the Extracted folder, using command "cd <Folder path>/<Desired Folder Name>". And then press ENTER.
	
	c. Run the .bat file using command "./update-macosx"

7. Wait for download to complete, this should upload the latest firmware to your Catena 4618.

8. Disconnect the boot jumper.

9. On Windows, install the USB Serial driver for Catena from "drivers/windows".

10. Open a terminal emulator (Arduino IDE, TeraTerm,etc) to the USB serial port. On a Mac, you can use screen for this, or use Arduino IDE.

11. You can verify the successful upload using the command "system version" and compare the results with version details in "config.txt".

12. If required, now you can provision the device.

13. Disconnect the Micro USB, then close the lid of the sensor.

14. Now, you can carry out with the next device with same steps from '0'.