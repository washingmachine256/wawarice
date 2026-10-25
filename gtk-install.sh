git clone --no-checkout https://www.github.com/daniruiz/flat-remix-gtk/
cd ~/flat-remix-gtk
git sparse-checkout init --no-cone
git sparse-checkout set themes/Flat-Remix-GTK-Blue-Dark
git checkout master
mkdir ~/.themes/
cp -r ~/flat-remix-gtk/themes/Flat-Remix-GTK-Blue-Dark ~/.themes/

gsettings set org.gnome.desktop.interface gtk-theme "Flat-Remix-GTK-Blue-Dark"

rm -rf ~/flat-remix-gtk
