#!/bin/sh

# Atualizar os repositórios e instalar programas
sudo apt update && sudo apt install -y \
    git \
    golang \
    bspwm \
    sxhkd \
    zsh \
    kitty \
    vim \
    rofi \
    nemo \
    htop \
    polybar \
    papirus-icon-theme \
    fonts-firacode \
    fonts-noto-color-emoji \
    feh \
    redshift \
    neofetch \
    xclip \
    maim \
    volumeicon-alsa \
    firefox-esr \
    chromium \
    picom

# Mover .config
rm -rf ~/.config
mv -f .config ~/

# Mover arquivos .zshrc, .xinitrc, scripts, etc., para ~/
mv -f .zshrc .xinitrc .zprofile wallpapers scripts .gtkrc-2.0 .ticker.yaml ~/

# Dar permissões
chmod -R 755 ~/.config/bspwm/bspwmrc
chmod -R 644 ~/.config/sxhkd/sxhkdrc
chmod -R 755 ~/.config/polybar/launch.sh
chmod -R 755 ~/scripts/changewp.sh
chmod -R 755 ~/scripts/changeKL.sh

# Configuração do mouse (opcional)
# echo -e 'Section "InputClass"\n     Identifier "My Mouse"\n     MatchIsPointer "yes"\n     Option "AccelerationProfile" "-1"\n     Option "AccelerationScheme" "none"\n     Option "AccelSpeed" "-1"\nEndSection' | sudo tee /etc/X11/xorg.conf.d/50-mouse-acceleration.conf

# Trocar o shell padrão para zsh
chsh -s /bin/zsh
