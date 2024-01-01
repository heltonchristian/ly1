sudo xbps-install -y void-repo-nonfree void-repo-multilib void-repo-nonfree-multilib && sudo xbps-install -Syyu
sudo xbps-install -y bspwm sxhkd xorg-minimal xinit zsh kitty vim xclip maim picom pipewire pipewire-pulseaudio pulsemixer rofi redshift htop nerd-fonts gtk-theme-united-gnome papirus-icon-theme papirus-folders feh neofetch firefox chromium virt-manager qemu libgcc-32bit libstdc++-32bit libdrm-32bit libglvnd-32bit nvidia-libs-32bit mono xautolock setxkbmap

mkdir -p ~/.config
mv -f .config ~/

mv -f .zshrc .xinitrc .zprofile wallpapers scripts ~/

chmod -R 755 ~/.config/bspwm/bspwmrc
chmod -R 644 ~/.config/sxhkd/sxhkdrc
chmod -R 755 ~/.config/polybar/launch.sh
chmod -R 755 ~/scripts/changewp.sh
chmod -R 755 ~/scripts/changeKL.sh
sudo usermod -aG wheel ly

chsh -s /bin/zsh

papirus-folders -C white --theme Papirus

sudo ln -s /etc/sv/libvirtd /var/service
sudo ln -s /etc/sv/virtlockd /var/service
sudo ln -s /etc/sv/virtlogd /var/service

sudo ln -s /etc/sv/pipewire /var/service
sudo ln -s /etc/sv/pipewire-pulse /var/service\

ln -s /etc/sv/dbus /var/service

echo "blacklist nouveau" | sudo tee /etc/modprobe.d/disable-nouveau.conf
echo "options nouveau modeset=0" | sudo tee -a /etc/modprobe.d/disable-nouveau.conf
sudo xbps-reconfigure -f linux$(uname -r)
sudo reboot
