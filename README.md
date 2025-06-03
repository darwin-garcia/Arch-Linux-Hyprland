# Arch Linux (Hyprland/Wayland)
Arch Linux Ricing with Hyprland

## Screenshots
![Main Screenshot.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Screenshot_2025-05-20_16-58-41.png)

![Lock Screen.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Screenshot_2025-05-27_21-13-33.png)

![Example Screenshot.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Screenshot_2025-05-27_21-16-09.png)

![Rofi Launcher.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Screenshot_2025-05-27_21-17-18.png)

## Video

## My Settings (Mis Configuraciones)

Official Repo
* [Waybar](https://github.com/Alexays/Waybar)
* [Rofi](https://github.com/davatorium/rofi)
* [Kitty](https://sw.kovidgoyal.net/kitty/)
* [Ranger](https://github.com/ranger/ranger) 
* [LazyVim](https://www.lazyvim.org/)
* [OhMyZSH](https://ohmyz.sh/#install)

Console:
` `

Files: 
$USER/.config/

You can copy and replace files in this repo.
` cp -r (file_name) ./config/(folder_name)/(file_name)`

#### Repo (Pacman)
` sudo pacman -Syu `
#### Repo (AUR 'yay') Manual Setup (Instalacion Manual)

1. Paquetes Requeridos
` sudo pacman -S –needed base-devel git curl` 

2. Repositorio Local
` curl https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz --output yay.tar.gz ` 

3. Descomprimir el archivo del repositorio local
` tar -xvf yay.tar.gz –strip-components=1 ` 

4. Clonar el Repositorio yay (AUR)
` git clone https://aur.archlinux.org/yay.git ` 

5. Cambiar de directorio a la carpeta descargada
` cd yay/ ` 

6. Sincronizar
` makepkg –syncdeps ` 

7. Instalacion (Dentro de la cuenta de usuario)
` makepkg -si`  

#### Drivers
* ` pacman -S intel-ucode ` <- CPU Intel 
* ` pacman -S amd-ucode ` <- CPU AMD/Ryzen
* ` pacman -S xf86-video-intel ` <- Video Intel
* ` pacman -S nvidia nvidia-utils nvidia-driver nvidia-opencl-icd libcuda1 libnvidia-encode1 ` <- Video NVIDIA and Libraries
* ` pacman -S xf86-video-amdgpu `<- Video ATI/AMD Radeon/FirePro



Probado en Junio 2025
👨‍💻 ©MMXXV. Darwin Garcia. 🇨🇴
