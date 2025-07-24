# Arch Linux (Hyprland/Wayland)
 ____  ____  ____  ____  ____  ____  ____  ____  
||H ||||y ||||p ||||r ||||D ||||o ||||t ||||s |||
||__||||__||||__||||__||||__||||__||||__||||__|||
|/__\||/__\||/__\||/__\||/__\||/__\||/__\||/__\||

Arch Linux Ricing with Hyprland (Basic Settings)
<p> Este repositorio tiene las configuraciones sencillas y minimas para ajustar el entorno de Escritorio a una maquina con Arch Linux instalado desde cero.</p>

[Haz Clic Aqui](https://github.com/darwin-garcia/Arch-Linux-Hyprland/tree/main/Instrucciones/Hyprland) para ver las Instrucciones de Instalacion de mi entorno con Hyprland

## Screenshots
![Desktop.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Desktop.png)

![Lock Screen.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/LockScreen.png)

![Example Screenshot.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Kitty%20Terminal%20Gadgets.png)

![Rofi Launcher.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Rofi%20Start%20Menu.png)

![Calendar.](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Desktop%20Calendar.png)

![NeoVim](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/NeoVim.png)

![File Explorer](https://raw.githubusercontent.com/darwin-garcia/Arch-Linux-Hyprland/refs/heads/main/Screenshots/Files%20Explorer.png)

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
` tar -xvf yay.tar.gz -–strip-components=1 ` 

4. Clonar el Repositorio yay (AUR)
` git clone https://aur.archlinux.org/yay.git ` 

5. Cambiar de directorio a la carpeta descargada
` cd yay/ ` 

6. Sincronizar
` makepkg –syncdeps ` 

7. Instalacion (Dentro de la cuenta de usuario)
` makepkg -si`

#### Repo (BlackArch Linux).
Solo se recomienda para instalar herramientas de pentesting y hacking. Ocupa alrededor de 5GB adicionales al sistema Arch instalado
Repositorio oficial: [BlackArch](https://blackarch.org/downloads.html#install-repo)
* `curl -O https://blackarch.org/strap.sh`
* `chmod +x strap.sh`
* `sudo ./strap.sh`
* Actualizar los paquetes: `sudo pacman -Syyu`

#### Drivers
Revisa el procesador y tarjeta grafica que tengas instaladas 
* CPU Intel: `pacman -S intel-ucode ` 
* CPU AMD/Ryzen: `pacman -S amd-ucode `
* Video Intel: `pacman -S xf86-input-libinput libva-intel-driver intel-media-driver vulkan-intel` 
* Video NVIDIA: `pacman -S nvidia nvidia-utils nvidia-driver nvidia-opencl-icd libcuda1 libnvidia-encode1 ` 
* Video AMD/ATI `pacman -S xf86-video-amdgpu vulkan-radeon`

#### Lector de Huellas Synaptics (Aplica Lenovo ThinkPads)
Repositorio oficial: [fprintd](https://wiki.archlinux.org/title/Fprint)

Instalar primero: 
* `sudo pacman -S usbutils`
* `sudo pacman -S fprintd libfprint imagemagick`
* Debe editar el archivo: `sudo nvim /etc/pam.d/system-local-login`
* Añadir la siguiente linea: `auth      sufficient   pam_fprintd.so` y Guardar en el editor

* Debe editar el archivo en el gestor de usuarios. Consulte la documentación arriba.
* Para habilitar el servicio: `sudo systemctl enable fprintd.service` o `sudo systemctl edit --full --force fprintd.service` y `sudo systemctl daemon-reload`. Puede Reiniciar al finalizar esta parte
* Tan pronto finalice, debe configurar el usuario `fprintd-enroll *user*` y luego comprobar con `fprint-verify`


#### Mas sobre Instalacion de Arch Linux
[Haz clic aqui](https://github.com/darwin-garcia/Arch-Linux-Hyprland/tree/main/Instrucciones) para ver mas instrucciones de instalacion de Arch Linux

Probado en Julio 2025
👨‍💻 ©MMXXV. Darwin Garcia. 🇨🇴
