### Build Pipboy

Introduction:

This is a work in progress, as I move along I will update this document with what I have accomplished towards making this happen.

Parts list:

These are the parts I am currently using. I opted for a 4" screen and the software is optimized with 800x480 screen resolution in mind, if you use a smaller screen, the code will need to be changed.

- Raspberry Pi 4.
- Power supply for the Raspberry Pi.
- Miuzei Raspberry Pi 4 Touchscreen with Case Fan.
- Battery Pack for the Raspberry Pi to make it portable.

Software:

I am using the latest Raspberry Pi OS image, I just used the imager to burn the image to an SD card. Before installing the touchscreen, perform the following on a regular monitor, it is just easier.

Once you have burned the image to the SD card, and you boot the Paspberry Pi for the first time, update it to the latest version using "sudo apt update && sudo apt upgrade". I also installed Gambas with "sudo apt install gambas3\*". 

Once I have finished the TOTO list, I will do a 1.0 release and you can just download an installable package. but until then you will need to download it using "git clone https://github.com/cjstoddard/Pipboy.git". Open Gambas, choose Open Project, and navigate to the Pipboy folder and click on Open. Click on Project, then Make Executable. This will build pipboy.gambas for you. You can now close Gambase and double click on pipboy.gambas to make sure it runs properly. If it does, you are ready to move on.

To get the touchscreen working run the following commands and then shut it down;

```
git clone https://github.com/goodtft/LCD-show.git
chmod -R 755 LCD-show
cd LCD-show/
sudo ./MPI4008-show
```

For more information see http://www.lcdwiki.com/4inch_HDMI_Display-C

At this point you can install the touchscreen and mount the Raspberry Pi in the case. You can now boot it up and the screen should work. You can open the Home folder, go into the Pipboy folder and execute pipboy.gambas using the touchscreen. To make it easier you can place a link to the program on the desktop or add it to startup so it comes up when you boot up the Raspberry Pi. 