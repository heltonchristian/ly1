#PROMPT='%F{8}$%f '
#PROMPT='%F{243}%1~ %f%F{White}%f  '
PROMPT='%F{#888888}%1~%f %F{White}%f  '

############# BÁSICO #############
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Configuração de aliases
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'
alias rm='rm -r'
alias cp='cp -r'
alias vi='vim'
alias fetch='clear && neofetch'
alias feh='devour feh'
alias bspwmrc='vim .config/bspwm/bspwmrc'
alias sxhkdrc='vim .config/sxhkd/sxhkdrc'
alias kc='vim .config/kitty/kitty.conf'
alias zshrc='vim ~/.zshrc'
alias pc='vim ~/.config/picom/picom.conf'
alias off='redshift -x && clear'
alias wr='~/scripts/changewp.sh'
alias nl='redshift -O 5000 && clear'
alias polybarc='sudo vim ~/.config/polybar/config.ini'
alias rofi='sudo vim ~/.config/rofi/config.rasi'
alias tc='sudo vim ~/.ticker.yaml'
alias cs='nvidia-settings --assign CurrentMetaMode="DP-0: 1920x1080_240 { ViewPortIn=1440x1080, ViewPortOut=1920x1080+0+0 }, DVI-I-1: 1920x1080_144 { ViewPortIn=1920x1080, ViewPortOut=1920x1080+1920+0 }" && bspc wm -r'
alias res='nvidia-settings --assign CurrentMetaMode="DP-0: 1920x1080_240 { ViewPortIn=1920x1080, ViewPortOut=1920x1080+0+0 }, DVI-I-1: 1920x1080_144 { ViewPortIn=1920x1080, ViewPortOut=1920x1080+1920+0 }" && bspc wm -r'

############### void ##################
alias xi='sudo xbps-install -S'
alias xr='sudo xbps-remove -R'
alias xu='sudo xbps-install -Su'
alias xsearch='xbps-query -Rs'

############# COLORS #############
#LS_COLORS='rs=0:di=1;97:fi=1;90';
LS_COLORS='rs=0:di=1;94:fi=1;37:ln=1;34'
export LS_COLORS
