sudo pacman -S python-requests
mkdir -p ~/.config/mako/ && cp -r ~/wawarice/mako ~/.config/
mkdir -p ~/.config/niri/ && cp -r ~/wawarice/niri ~/.config/
mkdir -p ~/.config/waybar/ && cp -r ~/wawarice/waybar ~/.config/
mkdir -p ~/.config/rofi/ && cp -r ~/wawarice/rofi ~/.config/
killall -SIGUSR2 waybar

git clone --no-checkout https://www.github.com/daniruiz/flat-remix-gtk/
cd ~/flat-remix-gtk
git sparce-checkout init --cone
git sparse-checkout set themes/Flat-Remix-GTK-Blue-Dark
git checkout master
mkdir ~/.themes/
cp -r ~/flat-remix-gtk/themes/Flat-Remix-GTK-Blue-Dark ~/.themes/

gsettings set org.gnome.desktop.interface gtk-theme "Flat-Remix-GTK-Blue-Dark"

