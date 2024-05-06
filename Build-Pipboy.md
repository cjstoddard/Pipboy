### Build Pipboy

Introduction:

This is a work in progress, as I move along I will update this document with what I have accomplished towards making this happen. This is meant to be as simple as possible, a project someone can put together fairly quickly with a minum of fuss.

Parts list:

These are the parts I am currently using. I opted for a 4" screen and the software is optimized with 800x480 screen resolution in mind, if you use a smaller screen, the code will need to be changed.

- Raspberry Pi 4.
- Power supply for the Raspberry Pi.
- Miuzei Raspberry Pi 4 Touchscreen with Case Fan.
- USB C Battery Pack for the Raspberry Pi to make it portable.

Software:

Please read this whole document before proceeding.

I am using the latest Raspberry Pi OS image, I just used the imager to burn the image to an SD card. Before installing the touchscreen, perform the following on a regular monitor, it is just easier.

Once you have burned the image to the SD card, and you boot the Raspberry Pi for the first time, update it to the latest version and install amiga-fonts, the Onboard virtual keyboard to make working with the touchscreen easier, Git which is used to download software and Gambas for compiling the code. Open a terminal and type in the following commands;

```
sudo apt update && sudo apt upgrade
sudo apt install fonts-amiga onboard at-spi2-core git gambas3*
```

I will do a 1.0 release in the near future so you can just download an installable package. Until then you will need to follow these instructions. Type the following commands into the terminal;

```
git clone https://github.com/cjstoddard/Pipboy.git
cd Pipboy
gbc3 -agv > Pipboy.log
gba3
cd
```
Now open the file manager, open the Pipboy folder and double click on Pipboy.gambas to make sure it runs properly. If it does, you are ready to move on.

To get the touchscreen working run the following commands in the terminal;

```
git clone https://github.com/goodtft/LCD-show.git
chmod -R 755 LCD-show
cd LCD-show/
sudo ./MPI4008-show
```
For more information see http://www.lcdwiki.com/4inch_HDMI_Display-C

Once the final command is finished, it will ask you to reboot, answer no and then shut the Raspberry Pi down. You can install the touchscreen and mount the Raspberry Pi in the case. You can now boot it up and the screen should work. You can open the Home folder, go into the Pipboy folder and execute Pipboy.gambas using the touchscreen. To make it easier you can place a link to pipboy.sh on the desktop or add it to startup so it comes up when you boot up the Raspberry Pi.

Updating the code:

As a side note, once you have had everything up and running for a while and you need to update to the latest version, open a terminal and type in the following commands;

```
cd Pipboy
git pull
gbc3 -agv > Pipboy.log
gba3
cd
```
