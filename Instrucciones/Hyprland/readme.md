# Entorno Grafico Hyprland (Compositor Wayland)
![Example Screenshot.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Kitty%20Terminal%20Gadgets.png)

1. Instala los siguientes paquetes desde la terminal.
`sudo pacman -S hyprland hyprutils hyprwayland-scanner hyprlang hypridle waybar kitty dunst dolphin
grim slurp rofi ninja wayland-protocols wlr-randr wlroots
libjpeg-turbo libwebp libjxl pango cairo pkgconf  libglvnd
xdg-desktop-portal-hyprland xdg-desktop-portal-wlr xdg-desktop-portal-gtk
xdg-user-dirs xdg-utils
qt6-svg qt6-wayland qt6-virtualkeyboard qt6-multimedia-ffmpeg qt5-wayland qt5ct qt5-wayland
wireplumber pipewire cmake meson cpio pkg-config git gcc `

3. Los siguientes ajustes deben estar incluidos en el archivo `$HOME/.config/hypr/hyprland.conf`. Puedes copiar o revisar el codigo fuente de la carpeta 📁`Hypr` de mi repositorio

4. Modifica el Wallpaper
El paquete es `hyprpaper`. Esta disponible en su mayoria en el paquete yay(AUR). El archivo para editar se ubica en `$HOME/.config/hypr/hyprpaper.conf`. Puede editarlo en cualquier editor de texto GUI de Linux o en terminal TTY como nano o vim. Este es el contenido dentro del archivo:
* `preload= /home/$USER/.config/hypr/$file`
* `wallpaper= (el directorio del archivo debe ser el mismo del preload)`
* `splash = false`

4. Atajos programados en el Desktop 
La tecla `Super` es la tecla Windows al lado del `Control`.
Esta es mi configuración: 
* `Super`+`F4` = Cerrar Sesion Actual del usuario en Hyprland
* `Super`+`L` = Bloquear la sesion
* `Super`+`Espacio` = Menu inicio de programas (Rofi o Wofi) 
* `Super`+`Enter` = Terminal (Kitty)
* `Super`+`E` = Explorador de Archivos GUI (Thunar)
* `Super`+`B` = Navegador (Chromium)
* `Super`+`C` = Calculadora (galculator)
* `Super`+`X` = Captura de pantalla 

5. Gadgets de Terminal
[Haz clic aqui](https://github.com/darwin-garcia/Arch-Linux-Hyprland/blob/main/Instrucciones/Add-ons/readme.md) para ver las instrucciones de instalacion

Probado en Junio 2025
🎯 ©2025. Creado y diseñado por 👨‍💻 Darwin Garcia. 🇨🇴
