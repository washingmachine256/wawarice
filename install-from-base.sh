sudo pacman -Syu sddm niri xwayland-satellite xdg-desktop-portal-gnome xdg-desktop-portal-gtk kitty matugen cava qt6-multimedia-ffmpeg mako polkit-kde-agent rofi fastfetch awww waybar pavucontrol pipewire pipewire-jack blueman nm-connection-editor network-manager-applet nwg-look nwg-displays python-requests
systemctl enable sddm.service
mkdir -p ~/.config/mako/ && cp -r ~/wawarice/mako ~/.config/
mkdir -p ~/.config/niri/ && cp -r ~/wawarice/niri ~/.config/
mkdir -p ~/.config/waybar/ && cp -r ~/wawarice/waybar ~/.config/
mkdir -p ~/.config/rofi/ && cp -r ~/wawarice/rofi ~/.config/
killall -SIGUSR2 waybar

git clone https://github.com/daniruiz/flat-remix-gtk/tree/master/themes/Flat-Remix-GTK-Blue-Dark ~/.themes/
gsettings set org.gnome.desktop.interface gtk-theme "Flat-Remix-GTK-Blue-Dark"
