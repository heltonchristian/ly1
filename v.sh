sudo xbps-install -y git bspwm sxhkd zsh kitty vim xclip maim picom pulsemixer rofi redshift htop nerd-fonts papirus-icon-theme papirus-folders feh neofetch firefox chromium 

mkdir -p ~/.config
mv -f .config ~/

mv -f .zshrc .xinitrc .zprofile wallpapers scripts 

chmod -R 755 ~/.config/bspwm/bspwmrc
chmod -R 644 ~/.config/sxhkd/sxhkdrc
chmod -R 755 ~/.config/polybar/launch.sh
chmod -R 755 ~/scripts/changewp.sh
chmod -R 755 ~/scripts/changeKL.sh

chsh -s /bin/zsh

papirus-folders -C white --theme Papirus
