#!/bin/sh

# Instalar programas
sudo pacman -S --noconfirm git go bspwm sxhkd zsh kitty vim rofi nemo ranger w3m btop polybar papirus-icon-theme ttf-nerd-fonts-symbols ttf-fira-code feh redshift neofetch ncspot xclip maim pulsemixer firefox chromium picom

# Mover pastas para ~/.config
mkdir -p ~/.config
mv -f bspwm sxhkd rofi neofetch polybar picom btop gtk-3.0 ~/.config

# Mover arquivos .zshrc,.xinitrc, scripts ...  para ~/
mv -f .zshrc .xinitrc .zprofile wallpapers scripts .gtkrc-2.0 .ticker.yaml ~/

# Dar permissões
chmod -R 755 ~/.config/bspwm/bspwmrc
chmod -R 644 ~/.config/sxhkd/sxhkdrc
chmod -R 755 ~/.config/polybar/launch.sh
chmod -R 755 ~/scripts/changewp.sh
chmod -R 755 ~/scripts/changeKL.sh

#mouse
echo -e 'Section "InputClass"\n     Identifier "My Mouse"\n     MatchIsPointer "yes"\n     Option "AccelerationProfile" "-1"\n     Option "AccelerationScheme" "none"\n     Option "AccelSpeed" "-1"\nEndSection' | sudo tee /etc/X11/xorg.conf.d/50-mouse-acceleration.conf

#trocar o shell para zsh
chsh -s /bin/zsh

#AUR Helper
cd
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

#AUR programas
yay -S --noconfirm papirus-folders-git equilux-theme ticker

#icones, temas e fontes
papirus-folders -C white --theme Papirus

rm -rf ~/ly
rm -rf ~/yay
