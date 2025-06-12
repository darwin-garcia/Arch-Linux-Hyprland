# Arch Linux (Hyprland/Wayland)
Arch Linux Ricing with Hyprland (Basic Settings)
<p> Este repositorio tiene las configuraciones sencillas y minimas para ajustar el entorno de Escritorio a una maquina con Arch Linux instalado desde cero.</p>

[Haz Clic Aqui](https://github.com/darwin-garcia/Arch-Linux-Hyprland/tree/main/Instrucciones/Hyprland) para ver las Instrucciones de Instalacion de mi entorno con Hyprland

## Screenshots
![Main Screenshot.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Screenshot_2025-05-20_16-58-41.png)

![Lock Screen.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Screenshot_2025-05-27_21-13-33.png)

![Example Screenshot.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Screenshot_2025-05-27_21-16-09.png)

![Rofi Launcher.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Screenshot_2025-05-27_21-17-18.png)

## Video

## My Settings (Mis Configuraciones)

Official Repo
* [Waybar](https://github.com/Alexays/Waybar): Taskbar on top
* [Rofi](https://github.com/davatorium/rofi): Start Menu Launcher
* [Kitty](https://sw.kovidgoyal.net/kitty/): Terminal App
* [Ranger](https://github.com/ranger/ranger): File Explorer on Terminal 
* [LazyVim](https://www.lazyvim.org/): Text Editor IDE based
* [OhMyZSH](https://ohmyz.sh/#install): Terminal Shell

Console: ` `

Fuentes para iconos personalizados: [Nerd Fonts](https://www.nerdfonts.com/cheat-sheet)

Files: 
$USER/.config/

Puedes copiar y pegar los archivos alojados en este repositorio. Este es el ejemplo en terminal
` cp -r (file_name) ./config/(folder_name)/(file_name)`

#### Repo (Pacman) 

Gestor de Paquetes integrado en Arch Linux
* ` sudo pacman -Syu `

  
#### Repo (AUR 'yay') Manual Setup (Instalacion Manual)

Gestor de Paquetes alternativo al repositorio oficial de Arch (pacman)

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
Revisa el procesador y tarjeta grafica que tengas instaladas 
* CPU Intel: `pacman -S intel-ucode ` 
* CPU AMD/Ryzen: `pacman -S amd-ucode `
* Video Intel: `pacman -S xf86-video-intel libva-intel-driver intel-media-driver vulkan-intel` 
* Video NVIDIA: `pacman -S nvidia nvidia-utils nvidia-driver nvidia-opencl-icd libcuda1 libnvidia-encode1 ` 
* Video AMD/ATI `pacman -S xf86-video-amdgpu vulkan-radeon`

#### Mas sobre Instalacion de Arch Linux
[Haz clic aqui](https://github.com/darwin-garcia/Arch-Linux-Hyprland/tree/main/Instrucciones) para ver mas instrucciones de instalacion de Arch Linux

Probado en Junio 2025
👨‍💻 ©MMXXV. Darwin Garcia. 🇨🇴
