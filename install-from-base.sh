sudo pacman -Syu sddm niri xwayland-satellite xdg-desktop-portal-gnome xdg-desktop-portal-gtk matugen cava qt6-multimedia-ffmpeg mako polkit-kde-agent rofi fastfetch awww waybar pavucontrol pipewire pipewire-jack blueman nm-connection-editor network-manager-applet nwg-look nwg-displays python-requests noto-fonts-emoji ttf-nerd-fonts-symbols cliphist wl-clipboard ddcutil kitty zsh
systemctl enable sddm.service
mkdir -p ~/.config/mako/ && cp -r ~/wawarice/mako ~/.config/
mkdir -p ~/.config/niri/ && cp -r ~/wawarice/niri ~/.config/
mkdir -p ~/.config/waybar/ && cp -r ~/wawarice/waybar ~/.config/
mkdir -p ~/.config/rofi/ && cp -r ~/wawarice/rofi ~/.config/
mkdir -p ~/.config/kitty/ && cp -r ~/wawarice/kitty ~/.config/


chmod +x ~/wawarice/gtk-install.sh
chmod +x ~/wawarice/awww-enable.sh

chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
omz theme set alanpeabody
~/wawarice/gtk-install.sh
~/wawarice/awww-enable.sh

rm -rf ~/wawarice
