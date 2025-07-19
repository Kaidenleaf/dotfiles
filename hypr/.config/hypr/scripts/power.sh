#!/bin/bash

# Opciones del menú
options="Bloquear\nSuspender\nReiniciar\nApagar\nCerrar sesión"

# Mostrar menú con wofi
selected=$(echo -e "$options" | wofi --dmenu --width 200 --height 200 --hide-scroll --prompt "Energía")

case $selected in
    "Bloquear")
        hyprlock ;;  # O reemplaza con swaylock/gtklock si usas otro
    "Suspender")
        systemctl suspend ;;
    "Reiniciar")
        systemctl reboot ;;
    "Apagar")
        systemctl poweroff ;;
    "Cerrar sesión")
        hyprctl dispatch exit ;;
    *)
        exit 1 ;;
esac
