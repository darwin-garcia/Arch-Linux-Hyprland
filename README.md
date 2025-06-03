# Arch Linux (Hyprland/Wayland)
Arch Linux Ricing with Hyprland

## Screenshots
![Main Screenshot.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Screenshot_2025-05-20_16-58-41.png)

![Lock Screen.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Screenshot_2025-05-27_21-13-33.png)

![Example Screenshot.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Screenshot_2025-05-27_21-16-09.png)

![Rofi Launcher.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Screenshot_2025-05-27_21-17-18.png)

## Video

## Include
Waybar
Rofi
Kitty
Ranger 
LazyVim
OhMyZSH

Files
$USER/.config/

You can copy and replace files in this repo.

#### Repo (Pacman)
` sudo pacman -Syu `
#### Repo (AUR 'yay')
-
` sudo pacman -S –needed base-devel git curl` Paquetes Requeridos
-
` curl https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz --output yay.tar.gz ` Repositorio Local
-
` tar -xvf yay.tar.gz –strip-components=1 ` Descomprimir el archivo del repositorio local
-
` git clone https://aur.archlinux.org/yay.git ` Clonar el Repositorio yay (AUR)
-
` cd yay/ ` Cambiar de directorio a la carpeta descargada
-
` makepkg –syncdeps ` Sincronizar
-
` makepkg -si`  Instalacion

Drivers

DOC File: 

👨‍💻 ©MMXXV. Darwin Garcia. 🇨🇴
