#!/bin/sh

# Compiles the code and makes the executable

gbc3 -agv > Pipboy.log
gba3

# Makes the desktop file

echo "[Desktop Entry]" > pipboy.desktop
echo "Type=Application" >> pipboy.desktop
echo "Name=Pipboy" >> pipboy.desktop
echo "Icon=$HOME/bin/pipboy/assets/vaultboy-icon.jpg" >> pipboy.desktop
echo "Path=$HOME/bin/pipboy" >> pipboy.desktop
echo "Exec=$HOME/bin/pipboy/pipboy.sh" >> pipboy.desktop

# Makes the needed directories

mkdir -p $HOME/bin $HOME/bin/pipboy $HOME/bin/pipboy/assets $HOME/Music/pipboy
ln -s $HOME/Music/pipboy $HOME/bin/pipboy/music

# Installs everything where it needs to be

cp pipboy.desktop $HOME/Desktop
cp {inventory.txt, map.html, pipboy.desktop, pipboy.ini, pipboy.sh, Pipboy.gambas} $HOME/bin/pipboy/
chmod +x $HOME/bin/pipboy/Pipboy.gambas
cp {assets/map-a.jpg, assets/vaultboy-icon.jpg} $HOME/bin/pipboy/assets/
cp music/* $HOME/bin/pipboy/music/
