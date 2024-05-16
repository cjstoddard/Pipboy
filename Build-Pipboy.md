### Build Pipboy

Introduction:

This is a work in progress, as I move along I will update this document with what I have accomplished towards making this happen. This is meant to be as simple as possible, a project someone can put together fairly quickly with a minum of fuss.

Parts list:

These are the parts I am currently using. I opted for a 4" screen and the software is optimized with 800x480 screen resolution in mind, if you use a smaller screen, the code will need to be changed. All of these items are availble on Amazon.

- Raspberry Pi 4.
- Power supply for the Raspberry Pi.
- Miuzei Raspberry Pi 4 Touchscreen with Case Fan.
- USB C Battery Pack for the Raspberry Pi to make it portable.
- A small speaker, either with a 3.5mm plug or Bluetooth.
- Optionally, mini bluetooth keyboard/touchpad.

Software:

I am using the latest Raspberry Pi OS image, I just used the imager to burn the image to an SD card. Before installing the touchscreen, perform the following on a regular monitor, it is just easier. Once you have burned the image to the SD card, and you boot the Raspberry Pi for the first time, update it to the latest version. Open a terminal and run the following command;

```
sudo apt update && sudo apt upgrade
```

If you are not interested in the source code and just want to download the binary, install it and move on to putting the hardware together, go to the main page, on the right, click on releases and download pipboy-1.0.zip. Extract the file, inside the pipboy folder you will find an install.sh program. Run that and it will install all the dependacies, place the program itself into $HOME/bin/pipboy and place a nice icon on your desktop to run the program. You can now skip down to the hardware section.

If you are interested in the source code and making modifications, continue reading. Please read this whole document before proceeding.

It is now time to install the dependencies, specifically, amiga-fonts, the Onboard virtual keyboard to make working with the touchscreen easier, Git which is used to download software and Gambas for compiling the code. In the terminal and type in the following commands;

```
sudo apt install fonts-amiga onboard at-spi2-core git gambas3*
```

Next, to get the code and compile it, type the following commands into the terminal;

```
git clone https://github.com/cjstoddard/Pipboy.git
cd Pipboy
chmod +x make.sh
./make.sh
```
You should now have a Pipboy icon on your desktop, double click on Pipboy.gambas to make sure it runs properly. If it does, you are ready to move on.

Hardware:

To get the touchscreen working run the following commands in the terminal;

```
git clone https://github.com/goodtft/LCD-show.git
chmod -R 755 LCD-show
cd LCD-show/
sudo ./MPI4008-show
```
For more information see http://www.lcdwiki.com/4inch_HDMI_Display-C

Once the final command is finished, it will ask you to reboot, answer no and then shut the Raspberry Pi down. You can install the touchscreen and mount the Raspberry Pi in the case. You can now boot it up and the screen should work. You can open the Home folder, go into the Pipboy folder and execute Pipboy.gambas using the touchscreen. To make it easier you can place a link to pipboy.sh on the desktop or add it to startup so it comes up when you boot up the Raspberry Pi.

Eventually I will get this setup mounted on an armband. I will probably 3D print a Fallout like Pipboy shell for it. At this point I don't think I will bother with rotary knobs or anything like that. The touch screen is perfectly fine, just consider it a Pipboy 1000.

Updating the code:

As a side note, once you have had everything up and running for a while and you need to update to the latest version, open a terminal and type in the following commands;

```
cd Pipboy
./update.sh
cd
```

If you have modified the code yourself don't run update.sh, instead once you have built the executable, just copy Pipboy.gambas to the $HOME/bin/pipboy/ folder.

```
cd Pipboy
cp Pipboy.gambas $HOME/bin/pipboy/
cd
```

Music:

If you are looking for some Fallout appropriate music for your Pipboy, these 3 Youtube videos will give you almost 5 hours of music.

Fallout 3 Galaxy News Radio All Songs

https://www.youtube.com/watch?v=LxM7soNJC1A

Fallout 76 - Appalachia Radio - Complete Tracklist

https://www.youtube.com/watch?v=FHF6q1mBiFs

Fallout 4 Radio Songs Diamond City Station Full + Track List

https://www.youtube.com/watch?v=Yy9La6YXNqI

The audio of these videos can be downloaded as opus files and then coverted to mp3's with the following commands;

```
sudo apt install yt-dlp ffmpeg
yt-dlp -x --audio-quality 0 URL
ffmpeg -i Filename.opus -ab 320k -map_metadata 0:s:a:0 -id3v2_version 3 Filename.mp3
```
