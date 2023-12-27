#!/bin/bash

# Define o diretório onde estão os wallpapers
wallpapers_dir="$HOME/wallpapers"

# Lista todos os wallpapers no diretório
wallpapers=( "$wallpapers_dir"/* )

# Verifica se o arquivo 'current_wallpaper.txt' existe
if [[ ! -f "$wallpapers_dir/current_wallpaper.txt" ]]; then
    echo "1" > "$wallpapers_dir/current_wallpaper.txt"
fi

# Lê o número da página atual do wallpaper do arquivo 'current_wallpaper.txt'
current_page=$(cat "$wallpapers_dir/current_wallpaper.txt")

# Define o número de wallpapers por página
wallpapers_per_page=1

# Calcula o índice de página baseado na página atual
current_page_index=$(( (current_page - 1) * wallpapers_per_page ))

# Calcula o próximo índice de página
next_page_index=$(( current_page_index + wallpapers_per_page ))

# Se o próximo índice for maior ou igual ao total de wallpapers, volta para o primeiro wallpaper
if (( next_page_index >= ${#wallpapers[@]} )); then
    next_page_index=0
fi

# Define o wallpaper atual usando feh
feh --bg-fill "${wallpapers[next_page_index]}"

# Calcula o número da próxima página
next_page=$(( (next_page_index / wallpapers_per_page) + 1 ))

# Salva o número da próxima página no arquivo 'current_wallpaper.txt'
echo "$next_page" > "$wallpapers_dir/current_wallpaper.txt"

# Exibe uma notificação para indicar a alteração do wallpaper
notify-send "Wallpaper Alterado"

clear
clear


