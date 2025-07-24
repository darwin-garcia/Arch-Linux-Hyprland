# Entorno Grafico BSPWM (Compositor picom/Xorg)
![Example Screenshot.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/BSPWM%20Desktop.png) 

### Iniciando desde Cero (Desde la consola TTY)
1. Debes descargar la interfaz de inicio de sesion usuarios. Puede ser `lightdm`, `sddm`, `gdm`. 
2. Activar el inicio de sesion por consola _(Puede instalar el entorno BSPWM despues de este paso antes del reinicio)_
3. Reiniciar el PC
4. Vuelve a la consola TTY. Este se activa con: (Ctrl+Alt+F1 o F2)
5. Instala los paquetes para el entorno grafico 

### Instalacion de Entorno Grafico BSPWM
* `sudo pacman -S bspwm dmenu sxhkd picom feh xorg-xrandr xdo rxvt-unicode picom kitty polybar rofi neovim ranger conky htop openssh iwd wget smartmontools wireless_tools vim wpa_supplicant xdg-utils`
* Puedes copiar y pegar los archivos de la carpeta 📁`config/BSPWM`, 📁`config/SXHKD`, 📁`config/picom`
* Cambia los permisos de las carpetas: `chmod +x .config/bspwm/bspwmrc`, `chmod +x .config/sxhkd/sxhkdrc`, `chmod +x .config/picom/picom.conf`
* Para editar la imagen de fondo, busca el archivo `bspwmrc` y en la ultima linea donde esta ubicada la direccion de la imagen como ejemplo: `feh /home/dangmoz/Pictures/example.jpg`
* Cambia igualmente los permisos del Polybar para que muestre correctamente los elementos y permita cargar el componente de escritorio: `chmod +x .config/polybar`
Recomiendo instalar la fuente JetBrainsMono Nerd Font para que los iconos se muestren correctamente. Aplica para Polybar y Conky

### Atajos en el teclado
Son editables en el 📁config/sxhkd. Esta es mi configuración:
* `Super`+`F4` = Cerrar la sesion actual del usuario en BSPWM
* `Super`+`Espacio` = Menu inicio de programas (Rofi)  
* `Super`+`Enter` = Terminal
* `Super`+`N` = Editor de Archivos en Terminal (Neovim)
* `Super`+`E` = Explorador de Archivos en Terminal (Ranger)
* `Super`+`F7` = Administrador de Tareas (htop)
Probado en Junio 2025
🎯 ©2025. Creado y diseñado por 👨‍💻 Darwin Garcia. 🇨🇴
