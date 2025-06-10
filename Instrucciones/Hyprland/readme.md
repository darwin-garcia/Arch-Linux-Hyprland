# Entorno Grafico Hyprland (Compositor Wayland)

1. Instala los siguientes paquetes desde la terminal.
`sudo pacman -S hyprland waybar kitty dunst dolphin grim slurp rofi ninja gcc wayland-protocols libjpeg-turbo libwebp libjxl pango cairo pkgconf cmake libglvnd hyprutils hyprwayland-scanner hyprlang hypridle wlr-randr wlroots xdg-desktop-portal-hyprland xdg-desktop-portal-wlr xdg-desktop-portal-gtk xdg-user-dirs xdg-utils qt6-svg qt6-wayland qt6-virtualkeyboard qt6-multimedia-ffmpeg qt5-wayland qt5ct qt5-wayland wireplumber pipewire `

2. Los siguientes ajustes deben estar incluidos en el archivo `$HOME/.config/hypr/hyprland.conf`. Puedes copiar o revisar el codigo fuente de la carpeta Hypr

3. Modifica el Wallpaper
El paquete es `hyprpaper`. Esta disponible en su mayoria en el paquete yay(AUR). El archivo para editar se ubica en `$HOME/.config/hypr/hyprpaper.conf`. Puede editarlo en cualquier editor de texto GUI de Linux o en terminal TTY como nano o vim:
* `preload= /home/$USER/.config/hypr/$file`
* `wallpaper= (el directorio del archivo debe ser el mismo del preload)`
* `splash = false`

4. Atajos programados en el Desktop


5. Gadgets de Terminal
[Haz clic aqui](https://github.com/darwin-garcia/Arch-Linux-Hyprland/blob/main/Instrucciones/Add-ons/readme.md) para ver las instrucciones de instalacion

Probado en Junio 2025
🎯 ©2025. Creado y diseñado por 👨‍💻 Darwin Garcia. 🇨🇴
