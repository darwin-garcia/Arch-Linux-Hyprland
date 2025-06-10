## Instrucciones (Español)
Debes descargar la version mas reciente de [Arch Linux](https://archlinux.org/download/) y darle formato en un Pendrive. Recomiendo [BalenaEtcher](https://etcher.balena.io/)
### Paso de Instalacion
- Entra a la UEFI/BIOS de tu PC
- Deshabilita el Arranque Seguro (Secure Boot) para modificar las particiones del disco duro
- Cambia el orden de arranque a la USB Pendrive que tenga el Arch Linux en el primer orden.
- Guarda los cambios de la UEFI/BIOS de tu PC

⚠ Nota: Si realizas Dual Boot asegurate de reducir la particion de Windows primero. Se recomienda en disco duro adicional para prevenir fallas en el arranque de un disco principal

### Primeros Pasos

Cuando salga la pantalla de comandos por primera vez intenta esto antes de empezar:
* Verifica si tienes conexion a Internet: `ping archlinux.org`
* Debes tener en cuenta el idioma del teclado durante la instalacion, ya que suele equivocarse al escribir los caracteres adicionales y al terminar de instalar Arch Linux, el teclado regresara al idioma por defecto (Ingles - US). _Mira en la seccion Cambiar el idioma del Teclado_
* Si quieres instalar Arch Linux de forma facil y sencilla, solo ingresa el comando: `archinstall `. Debes usar las flechas direccionales del teclado, Esc, Space y Enter para interactuar con el menu y validar los cambios

## Metodo Dificl (Para usuarios intermedios y avanzados. No necesitas ArchInstall).
_(Este segmento se esta actualizando)_
[Haz clic aqui](https://github.com/darwin-garcia/Arch-Linux-Hyprland/tree/main/Instrucciones/Instalacion) para consultar las instrucciones


### Activar Paquetes y Servicios despues de la instalacion de Arch Linux
* Activar el servicio de Red (NetworkManager)
  `systemctl enable NetworkManager.service`
* Activar el servicio de Audio (pipewire)
  `sudo systemctl enable --global pipewire-pulse `
* Activar el gestor de usuarios (SDDM)
  `sudo systemctl enable sddm.service -f `

#### Instalacion de Entorno Grafico AwesomeWM
`sudo pacman -S alacritty awesome feh gnu-free-fonts slock terminus-font ttf-liberation xorg-server xorg-xinit xorg-xrandr xsel xterm papirus-icon-theme iwd iwctl rxvt-unicode sxhkd wget wireless_tools wpa_suplicant xdg-utils htop fastfetch tty-clock cava ranger neovim`
#### Instalacion de Entorno Grafico Hyprland
`sudo pacman -S hyprland waybar kitty dunst dolphin grim slurp rofi ninja gcc wayland-protocols libjpeg-turbo libwebp libjxl pango cairo pkgconf cmake libglvnd hyprutils hyprwayland-scanner hyprlang hypridle wlr-randr wlroots xdg-desktop-portal-hyprland xdg-desktop-portal-wlr xdg-desktop-portal-gtk xdg-user-dirs xdg-utils qt6-svg qt6-wayland qt6-virtualkeyboard qt6-multimedia-ffmpeg qt5-wayland qt5ct qt5-wayland wireplumber pipewire ` 

#### Instalacion de Entorno Grafico XFCE (Desktop)
`sudo pacman -S xfce4 xfce4-goodies gvfs xarchiver thunar xfce4-screenshooter pavucontrol mousepad breeze-icons xfce4-calculator-plugin xfce4-pulseaudio-plugin pulseaudio `

#### Instalacion de Entorno Grafico Mate (Desktop)
`sudo pacman -S --needed mate mate-extra `
#### Instalacion de Entorno Grafico Cinammon (Desktop) usa componentes GNOME
`sudo pacman -S blueman bluez-utils cinnamon gnome-keying gnome-screenshot gnome-terminal gvfs-smb system-config-printer xdg-users-dirs-gtk xed `

#### Instalacion de Entorno Grafico Pantheon (ElementaryOS)
`sudo pacman -S pantheon pantheon-session elementary-icon-theme elementary-wallpapers gtk-theme-elementary lightdm-pantheon-greeter sound-theme-elementary switchboard pantheon-default-settings pantheon-applications-menu ttf-opensans capnet-assist pantheon-calculator pantheon-calendar pantheon-camera pantheon-code pantheon-files pantheon-mail pantheon-music pantheon-photos pantheon-screenshot pantheon-shortcut-overlay pantheon-terminal pantheon-videos simple-scan plank`

#### Instalacion de Entorno Grafico BSPWM
[Haz Clic Aqui](https://github.com/darwin-garcia/Arch-Linux-Hyprland/blob/main/Instrucciones/BSPWM/readme.md) para una guia mas completa
`sudo pacman -S bspwm dmenu sxhkd feh xorg-xrandr xdo rxvt-unicode picom alacritty neovim ranger conky htop openssh iwd wget smartmontools wireless_tools vim wpa_supplicant xdg-utils`

#### Instalacion de Entorno Grafico Qtile
`sudo pacman -S qtile alacritty `

#### Codecs Multimedia
`sudo pacman -S ffmpeg aom libde265 x264 x265 libmpeg2 xvidcore libtheora libvpx schroedinger sdl gstreamer gst-plugins-bad gst-plugins-base gst-plugins-base-libs gst-plugins-good gst-plugins-ugly xine-lib libdvdcss libdvdread dvd+rw-tools lame gst-plugins-base flac libmpcdec libdca opus lame faac faad2 jasper libwebp libdv xvidcore libvpx dav1d rav1e libvacodec libdvdnav libdvdread libdvd libobs libgl libegl ` 
#### OhMyZSH
[Sitio Web](https://ohmyz.sh/#install) de Instalacion. Debes tener el paquete `curl` instalado en el PC con Arch Linux

#### NeoVim
 `sudo pacman -S neovim ` 
Crear la configuracion
* Crear la carpeta `mkdir /.config/nvim `
* Crear el archivo de configuracion `touch init.vim `
* Editar la configuracion `nvim /.config/nvim/init.vim `

#### Gadgets de Terminal
[Haz Click Aqui](https://github.com/darwin-garcia/Arch-Linux-Hyprland/blob/main/Instrucciones/Add-ons/readme.md) para obtener mas informacion. Estos son los paquetes que contienen los Gadgets
* `sudo pacman -S conky neofetch fastfetch cava tty-clock figlet`

#### Terminal (Kitty) Mi configuracion
* `sudo pacman -S kitty ` 
Puedes copiar la configuracion en la carpeta del usuario ($HOME): `/home/$USER/.config/kitty/kitty.conf` de este repositorio

Probado en Junio 2025
🎯 ©2025. Creado y diseñado por 👨‍💻 Darwin Garcia. 🇨🇴
