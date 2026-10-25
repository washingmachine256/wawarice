git clone --no-checkout https://www.codeberg.org/LGFae/awww
cd ~/awww
git sparse-checkout init --no-cone
git sparse-checkout set contrib/systemd/awww-daemon.service
git checkout main
mkdir ~/.config/systemd/user/ && cp -r ~/awww/contrib/systemd/awww-daemon.service ~/.config/systemd/user/
systemctl daemon-reload

systemctl --user enable awww-daemon.service

rm -rf ~/awww
