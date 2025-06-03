# Arch Linux (Hyprland/Wayland)
Arch Linux Ricing with Hyprland

## Screenshots
![Main Screenshot.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Screenshot_2025-05-20_16-58-41.png)

![Lock Screen.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Screenshot_2025-05-27_21-13-33.png)

![Example Screenshot.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Screenshot_2025-05-27_21-16-09.png)

![Rofi Launcher.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Screenshot_2025-05-27_21-17-18.png)

## Video

## Include
* Waybar
* Rofi
* Kitty
* Ranger 
* LazyVim
* OhMyZSH

Files: 
$USER/.config/

You can copy and replace files in this repo.
` cp -r (file_name) ./config/(folder_name)/(file_name)`

#### Repo (Pacman)
` sudo pacman -Syu `
#### Repo (AUR 'yay')

Paquetes Requeridos
` sudo pacman -S –needed base-devel git curl` 

Repositorio Local
` curl https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz --output yay.tar.gz ` 

Descomprimir el archivo del repositorio local
` tar -xvf yay.tar.gz –strip-components=1 ` 

Clonar el Repositorio yay (AUR)
` git clone https://aur.archlinux.org/yay.git ` 

Cambiar de directorio a la carpeta descargada
` cd yay/ ` 

Sincronizar
` makepkg –syncdeps ` 

Instalacion (Dentro de la cuenta de usuario)
` makepkg -si`  

Drivers
* ` pacman -S intel-ucode ` <- Intel 
* ` pacman -S amd-ucode ` <- AMD
* ` pacman -S xf86-video-intel ` <- Video Intel
* ` pacman -S nvidia nvidia-utils ` <- NVIDIA
* ` pacman -S xf86-video-amdgpu `<- ATI/AMD Radeon/FirePro

## My Settings (Mis Configuraciones)

Probado en Junio 2025
👨‍💻 Darwin Garcia. 🇨🇴
👨‍💻 ©MMXXV. Darwin Garcia. 🇨🇴
