sudo pacman -S python-requests noto-fonts-emoji ttf-nerd-fonts-symbols
mkdir -p ~/.config/mako/ && cp -r ~/wawarice/mako ~/.config/
mkdir -p ~/.config/niri/ && cp -r ~/wawarice/niri ~/.config/
mkdir -p ~/.config/waybar/ && cp -r ~/wawarice/waybar ~/.config/
mkdir -p ~/.config/rofi/ && cp -r ~/wawarice/rofi ~/.config/
killall -SIGUSR2 waybar

chmod +x ~/wawarice/gtk-install.sh
chmod +x ~/wawarice/awww-enable.sh

~/wawarice/gtkinstall.sh
~/wawarice/awww-enable.sh

rm -rf ~/wawarice
