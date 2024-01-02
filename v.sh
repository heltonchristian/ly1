#sudo xbps-install -y void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree && sudo xbps-install -Syyu
#sleep 5
sudo xbps-install -y bspwm sxhkd xorg-minimal xinit zsh kitty vim xclip maim picom pipewire pulsemixer rofi redshift htop nerd-fonts gtk-theme-united-gnome papirus-icon-theme papirus-folders feh neofetch firefox chromium virt-manager qemu nvidia-dkms libgcc-32bit libstdc++-32bit libdrm-32bit libglvnd-32bit nvidia-libs-32bit mono xautolock setxkbmap

#sleep 5

mkdir -p ~/.config
sudo mv -f .config ~/
sudo mv -f .zshrc .xinitrc .zprofile wallpapers scripts ~/

sleep 5

sudo chmod -R 755 ~/.config/bspwm/bspwmrc
sudo chmod -R 644 ~/.config/sxhkd/sxhkdrc
sudo chmod -R 755 ~/.config/polybar/launch.sh
sudo chmod -R 755 ~/scripts/changewp.sh
sudo chmod -R 755 ~/scripts/changeKL.sh

sleep 5

sudo chsh -s /bin/zsh

sudo papirus-folders -C white --theme Papirus

#sudo ln -s /etc/sv/libvirtd /var/service
#sudo ln -s /etc/sv/virtlockd /var/service
#sudo ln -s /etc/sv/virtlogd /var/service

#sudo ln -s /etc/sv/pipewire /var/service
#sudo ln -s /etc/sv/pipewire-pulse /var/service

#sudo ln -s /etc/sv/dbus /var/service

#echo "blacklist nouveau" | sudo tee /etc/modprobe.d/disable-nouveau.conf
#echo "options nouveau modeset=0" | sudo tee -a /etc/modprobe.d/disable-nouveau.conf
#sudo xbps-reconfigure -f linux$(uname -r)
