Yet another Pipboy program

My wife decided she wanted a Pipyboy for cosplay. I could have just bought one, there are several availblem but what fun is that. This project is no where near done, but the basics are here. This program is written in Gambas 3, and while I have tried to add some funtionality to it, the program is by no means a functional personal assistant.

Parts list:

Raspberry Pi 4

Miuzei Raspberry Pi 4 Touchscreen with Case Fan

Battery Bank compatible with USB C devices

STAT Screen

This screen does not do anything useful. It does fill some of the text boxes from the pipboy.ini file. The first line of the ini file I use for the text box directly under the vaultboy image, I put the name I want use. The lines after that fill in the Aim, Sheild, Voltage and Nuclear boxes. Pipboy.ini can be edited with any text editor.

INV Screen

This is a very basic text editor with just open and save buttons.

DATA Screen

This is a web browser control, it loads Google Maps and requires the device to have an internet connection.

RADIO screen

This is a basic MP3 player, there is a music folder in the program folder, place any music you want in that folder.

Disclaimer: This software is provided "AS IS", without warranty of any kind, express or implied, including but not limited to warranties of merchantability, fitness for a paticular purpose and nonifringment. In no event shall the author or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.

TODO:

Straighten alignment of controls.

Add GPIO library so I can add rotary knobs and perhaps a GPS or temp/humidity/preasure sensor.

Have the INV screen load inventory.txt file when it opens.

Check for an internet connection, if there is not on, have it display a map image.

Add functionality to the MP3 player

Add a clock on the STAT screen.

