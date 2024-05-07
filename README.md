#### Yet another Pipboy program

My wife decided she wanted a Pipyboy for cosplay. I could have just bought one, there are several availble, but what fun is that. This project is no where near done, but the basics are here. This program is written in Gambas 3, and while I have tried to add some funtionality to it, the program is by no means a functional personal assistant. Read the Build-Pipboy.md document, this will get you started on installing the software and getting your Raspberry Pi setup.

Please keep in mind, this is meant as nothing more than a cosplay prop with a couple of mildly interesting functions. It is not meant to be a fully functioning anything, nor is it meant to be an accurate reproduction of the Pipboy interface. My goal here was to be literally "Good enough", perfect never was and never will be my goal.

STAT Screen:

This screen does not do anything useful. It does fill some of the text boxes from the pipboy.ini file. The first line of the ini file I use for the text box directly under the vaultboy image, I put the name I want use. The lines after that fill in the Aim, Shield, Voltage and Nuclear boxes. Pipboy.ini can be edited with any text editor.

INV Screen:

This is a very basic text editor with just open and save buttons. On start up the program loads inventory.txt, you can edit this file either with Pipboy or another text editor, just don't forget to save the file.

DATA Screen:

This is a web browser control, it loads Google Maps and requires the device to have an internet connection. If Pipboy does not detect an internet connection, it will display a Fallout style map instead

RADIO screen:

This is a basic MP3 player, there is a music folder in the program folder, place any music you want in that folder.

If you are not interested in the source code and just want to download the binary, install it and move on to putting the hardware together, to the right, click on releases and download pipboy-1.0.zip. Extract the file, inside the pipboy folder you will find an install.sh program. Run that and it will install all the dependacies, place the program itself into $HOME/bin/pipboy and place a nice icon on your desktop to run the program. Otherwise read the Build-Pipboy.md file for more information.

Disclaimer: This software is provided "AS IS", without warranty of any kind, express or implied, including but not limited to warranties of merchantability, fitness for a paticular purpose and nonifringment. In no event shall the author or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.

Credit where credit is due:
I shamelessly stole all the images for this project from https://github.com/ultrinnan/PipBoy.

Copyrights and Trademarks:
Both Fallout and Pipboy copyrights and trademarks belong to ZeniMax Media Inc and Bethesda Games. This project was developed for fun as part of a hobby, no infringment of any copyrights or trademarks is intended.