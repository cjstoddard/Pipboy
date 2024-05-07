#!/bin/sh

set -e

echo "Installing dependencies."

sudo apt update
sudo apt install fonts-amiga onboard at-spi2-core git -y
sudo apt install gambas3-runtime gambas3-gb-form gambas3-gb-gtk3-webview gambas3-gb-media gambas3-gb-media-form -y

echo "Building pipboy.desktop file."

echo "Icon=$HOME/bin/pipboy/assets/vaultboy-icon.jpg" >> bin/pipboy.desktop
echo "Path=$HOME/bin/pipboy" >> bin/pipboy.desktop
echo "Exec=$HOME/bin/pipboy/pipboy.sh" >> bin/pipboy.desktop

echo "Installing Pipboy to $HOME/bin/pipboy directory."

mkdir -p $HOME/bin $HOME/bin/pipboy $HOME/bin/pipboy/assets $HOME/Music/pipboy 
ln -s $HOME/Music/pipboy $HOME/bin/pipboy/music
cp bin/pipboy.desktop $HOME/Desktop
cp bin/* $HOME/bin/pipboy/
chmod +x $HOME/bin/pipboy/Pipboy.gambas
cp assets/* $HOME/bin/pipboy/assets/
cp music/* $HOME/bin/pipboy/music/

# If you want Pipboy to autostart uncomment the following lines.
# echo "Setting Pipboy to start when the system boots up."
# mkdir -p $HOME/.config/autostart
# cp pipboy.desktop $HOME/.config/autostart/
# chmod +x $HOME/.config/autostart/pipboy.desktop
echo "Done installing Pipboy, thank you."

