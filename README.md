## PCA9633-Arduino-LabVIEW ##

Arduino and LabVIEW code to send I2C commands for LED control of the PCA9633 chip.

This project was for the development of high intensity projector modules. BS107 MOSFETs were used which power the LEDs. This caused an inversion of the signal applied. 

The code will reflect this by inverting the value entered. (`ex. RGB value of 0xFFFFFFh would be converted to 0x000000h`) If using this code for design circuits not requiring inversion then modifications to this code should be noted.

### Download ###
To download from github [http://github.com/MABLabs/PCA9633-Arduino-LabVIEW](http://github.com/MABLabs/PCA9633-Arduino-LabVIEW), click on the "Downloads" links above or use the git command:

    $ git clone https://github.com/MABLabs/PCA9633-Arduino-LabVIEW.git

### Install ###
To install, move the downloaded PCA9633-Arduino-LabVIEW files to the directory of your chioice.

After installation you should have files for the Arduino, LabVIEW vis, and the schematic used for the PCA9633 circuit. The main files are:

- **pca9633EnterVal.ino** Arduino Code (for sketch only)
- **Arduino RGB LED I2C.vi** Main LabVIEW vi
- **RGB to Color.vi** Sub vi for Arduin RGB LED I2C.vi 

To run the LabVIEW vis you will need to download the NI LabVIEW Interface for Arduino Toolkit (`LIFA_Base.ino sketch`) found by the LabVIEW package manager or downloaded from [National Instruments](http://search.ni.com/nisearch/app/main/p/bot/no/ap/global/lang/en/pg/1/sn/catnav:mp/q/Arduino/).

### Schematic ###
![](https://github.com/MABLabs/PCA9633-Arduino-LabVIEW/blob/master/I2C%20RGB.jpg)

### Arduino Code ###

	// MBS projector
	// PCA9633 led layout
	// PWM Register LEDOUT Address 08H
	// 3 2 1 0
	// 00 01 00 01 = Red
	// 00 00 01 01 = Green
	// 00 01 01 00 = Blue
	//
	// LED driver LEDOUT state
	// 10 10 10 10 = 0xAA
	#include <Wire.h>

	// Default address of projector
	#define ADDRESS 0x2e

	// Register address values for projector
	#define PCA9633_TURN_ON 0x00
	#define PCA9633_RED 0x03
	#define PCA9633_GREEN 0x04
	#define PCA9633_BLUE 0x02
	#define PCA9633_PWM_ON 0x08

	void setup()
	{
  		Serial.begin(9600);
  		Wire.begin();

		// RESET of MODE1 register to 0 and turn PCA9633 on
		PCA9633_WriteRegister(ADDRESS, PCA9633_TURN_ON, 0x00);
  		LEDOUT(ADDRESS, 0x000000); //All Off
 		delay(2000);
	}

	// Main routine for display of LED colors on the PCA9633
	void loop()
	{
  		char ch[7];
  		long hx;
  
  		//Enter 6 digit RGB value in HEX ex. FFFFFF
  		if (Serial.available())
  		{
    		delay(100);
    		ch[0] = Serial.read();
    		ch[1] = Serial.read();
    		ch[2] = Serial.read();
    		ch[3] = Serial.read();
    		ch[4] = Serial.read();
    		ch[5] = Serial.read();
    		ch[6] = 0;
    
    		//Convert HEX string to HEX value
    		hx = htol(ch);
    		Serial.println(ch);

    		//Pass PCA9633 address and RGB value
    		LEDOUT(ADDRESS, hx);
  		}
  		delay(10);
	}

	// Configure PCA9633 LED registers and output values
	// usage. (PCA9633 address, RGB value)
	void LEDOUT(int addr, long hexval)
	{
  		int r, g, b;
  
  		// Set LDRx's of LEDOUT Reg. to 10b for RGB LED, it enables PWM
  		// Set LDRx of LEDOUT Reg. to 11b for D2 LED, it enables PWM and GRPPWM control
  		int ledout = 0xAA;

  		// Split RGB value into r, g, b element value
  		b = read_nibble(hexval, 0);
  		g = read_nibble(hexval, 1);
  		r = read_nibble(hexval, 2);
  
  		// Invert RGB values for MBS Projector configuration
  		r = r ^ 0xFF;
  		g = g ^ 0xFF;
  		b = b ^ 0xFF;
  
  		// XOR LEDOUT register address for selected color red
  		if(r == 255)
     		ledout = ledout ^ 0x0C;

  		// XOR LEDOUT register address for selected color green
  		if(g == 255)
     		ledout = ledout ^ 0x30;

  		// XOR LEDOUT register address for selected color blue
  		if(b == 255)
     		ledout = ledout ^ 0x03;

  		// Set PWM register for each color
  		PCA9633_WriteRegister(addr, PCA9633_RED, r);
  		Serial.print("Red = ");
  		Serial.println(r, HEX);
  		PCA9633_WriteRegister(addr, PCA9633_GREEN, g);
  		Serial.print("Green = ");
  		Serial.println(g, HEX);
  		PCA9633_WriteRegister(addr, PCA9633_BLUE, b);
  		Serial.print("Blue = ");
  		Serial.println(b, HEX);

  		// Set LED driver output state
  		PCA9633_WriteRegister(addr, PCA9633_PWM_ON, ledout);
	}

	// Read hex element value
	uint8_t read_nibble(uint32_t data, uint8_t ix)
	{
  		return ((data >> (ix * 8)) & 0xff);
	}

	// Convert a hex ascii string to a hex number.
	long htol(char *p)
	{
		// Look for 'x' as second character as in '0x' format

		if ((p[1] == 'x') || (p[1] == 'X'))
			return(strtol(&p[2], (char **)0, 16));
		else
			return(strtol(p, (char **)0, 16));
	}

	// Write data at selected address and register
	void PCA9633_WriteRegister(byte addr, byte reg, byte data)
	{
  		// Begin all transmission at address
  		Wire.beginTransmission(addr);

  		// Write at register data
  		Wire.write(reg);
  		Wire.write(data);

  		// Stop all transmission
  		Wire.endTransmission();
	} 

### Project Contributors ###

- Richard Rasmussen
- [Martin A. Jackson](https://github.com/mjackson/)
