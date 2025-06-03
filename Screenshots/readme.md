## Instrucciones (Espagnol)
Debes descargar la version mas reciente de Arch Linux y darle formato en un Pendrive. Recomiendo BalenaEtcher
### Paso de Instalacion
- Entra a la UEFI/BIOS de tu PC
- Deshabilita el Arranque Seguro (Secure Boot)
- Cambia el orden de arranque a la USB Pendrive que tenga el Arch Linux en el primer orden.
- Guarda los cambios de la UEFI/BIOS de tu PC

 Nota: Si realizas Dual Boot asegurate de reducir la particion de Windows primero. Se recomienda en disco duro adicional para prevenir fallas en el arranque de un disco principal

### Primeros Pasos

Cuando salga la pantalla de comandos por primera vez intenta esto antes de empezar:
* Verifica si tienes conexion a Internet: ` ping archlinux.org`
* Debes tener en cuenta el idioma del teclado durante la instalacion, ya que suele equivocarse al escribir los caracteres adicionales y al terminar de instalar Arch Linux, el teclado regresara al idioma por defecto (Ingles - US). Mira en la seccion Cambiar el idioma del Teclado
* Si quieres instalar Arch Linux de forma facil y sencilla, solo ingresa el comando: ` archinstall `. Debes usar las flechas direccionales del teclado, Esc, Space y Enter para interactuar con el menu y validar los cambios
  
#### Particiones del disco duro
Las particiciones del disco duro en tu maquina se identifican como:
nvme0n1 <<Disco Duro NVMe SSD
sda1 << Disco duro SATA o USB Externa (Puede ser disco duro o Pendrive)
Minimo deben tener este ajuste para que pueda arrancar Arch Linux:
* `/` [ext4] _Raiz o Particion principal del Sistema_
* `/swap` [Linux Swap] _Memoria Virtual. Debe ser igual o la mitad de la RAM de tu PC instalada. Si tienes poca ram, se recomienda el doble de la RAM instalada de tu PC_
* `/boot` [fat32/EFIBOOT] _512MB o 1GB de tamano. Debe estar en el primer orden y marcar la particion como arranque_

##### Comprobar si es BIOS o UEFI
` ls /sys/firmware/efi/efivars `
#### Comprobar el disco duro (Previamente sin formato, Solo informacion)
` fdisk -l `

### Particiones del disco duro
Puedes utilizar una utilidad llamada `cfdisk `  o `cgdisk`

##### Crear EFI de arranque
` mkfs.fat -F32 /dev/sda1 `
##### Crear la particion SWAP manualmente
X es el numero de la particion. (sda) (sdb) = Discos SATA o USB Externo | (nvme0nX) = Discos NVMe
` mkswap /dev/sdaX ` o ` mkswap /dev/nvme0n1pX `
` swapon /dev/sdaX ` o ` swapon /dev/nvme0n1pX  `
##### 
* NVMe (dev/nvme0)
X es el numero de la particion
` mkfs.ext4 /dev/nvme0n1pX `
* SATA (dev/sda0)
X es el numero de la particion
` mkfs.ext4 /dev/sdaX `

#### Cambiar el idioma del Teclado (Puede ser al principio o durante el proceso de instalacion)
* Configurar el idioma del teclado en la sesion actual: ` loadkeys la-latin1 `
* Crear el idioma del teclado 
Espanol Latinoamerica: ` echo KEYMAP=la-latin1 > /etc/vconsole.conf `
Espanol Espana ` echo KEYMAP=ES > /etc/vconsole.conf `
* Verificar el cambio del idioma del teclado: `vim /etc/vconsole.conf ` o ` localectl status` (Despues de reinicio)
* Configurar el teclado latino de forma permanente ` Setxkbmap -layout latam -variant nodeadkeys `

#### Cambiar Zona Horaria (Aplica para Colombia/Bogota)
` ln -sf /usr/share/zoneinfo/America/Bogota /etc/localtime `
` hwclock –-systohc || hwclock -w `
` echo LANG=es_CO.UTF-8 > /etc/locale.conf `
` locale-gen `
#### Cambiar el nombre de la maquina

Comando en terminal para cambiar el nombre de maquina (Debe ser usuario Root)
` echo myhostname > /etc/hostname`
Para verificar o escribir manualmente
` vim /etc/hostname ` o ` nano /etc/hostname`

#### Instalacion de Repositorios
El servicio de repositorios por defecto y oficial para Arch Linux es Pacman. Desde aqui puedes instalar todos los complementos y apps que necesites para tu PC con Arch Linux
* ` sudo pacman -S ` Instalar un programa
* ` sudo pacman -Syu ` Actualizar tu sistema 
* ` sudo pacman -R ` Desinstalar un programa
* ` sudo pacman -Rcs ` Desinstalar completamente un programa con sus complementos
#### Post Instalacion (Metodo Dificil)

Activar el chroot (Pasar a Instalacion de Paquetes Arch Linux desde la consola de comandos inicial)
` arch-chroot /mnt  `
Seleccionar laa Instalacion de Paquetes
` pacstrap /mnt `
Paquetes minimos requeridos para funcionar tu PC con Arch Linux durante la instalacion
* Arch Linux minimo (Sin Interfaz Grafica, Sin Gestor de Usuario)
` pacstrap /mnt base base-devel linux linux-firmware linux-headers sudo grub efibootmgr htop vim ranger fastfetch zsh ntfs-3g gvfs networkmanager netctl dhcp wpa_supplicant dialog  dosfstools openssh`
* Arch Linux (Interfaz Grafica GNOME, Gestor de Usuario GDM)
` pacstrap /mnt  base base-devel linux linux-firmware linux-headers efibootmgr htop vim ranger fastfetch zsh gnome gnome-extra gparted gdm `
* Arch Linux con nucleo de Linux LTS (Interfaz Grafica GNOME, Gestor de Usuario GDM)
` pacstrap /mnt base base-devel linux linux-firmware linux-lts linux-headers linux-lts-headers efibootmgr xorg-server xorg-xinit vim `
* Arch Linux con nucleo de Linux Hardened (Interfaz Grafica GNOME, Gestor de Usuario GDM)
` pacstrap /mnt  `
*  Arch Linux con nucleo de Linux Zen (Interfaz Grafica GNOME, Gestor de Usuario GDM)
` pacstrap /mnt  `

### Activar Paquetes y Servicios despues de la instalacion de Arch Linux
* Activar el servicio de Red (NetworkManager)
  ` `
* Activar el servicio de Audio (pipewire)
  ` `
* Activar el gestor de usuarios (SDDM)
  ` sudo systemctl enable sddm.service -f `

#### Instalacion de Entorno Grafico Hyprland
`sudo pacman -S hyprland ninja gcc wayland-protocols libjpeg-turbo libwebp libjxl pango cairo pkgconf cmake libglvnd hyprutils hyprwayland-scanner hyprlang hypridle wlr-randr wlroots xdg-desktop-portal-hyprland xdg-desktop-portal-wlr xdg-desktop-portal-gtk xdg-user-dirs qt6-svg qt6-wayland qt6-virtualkeyboard qt6-multimedia-ffmpeg qt5-wayland qt5ct qt5-wayland ` 

#### Instalacion de Entorno Grafico BSPWM
` `

#### Codecs Multimedia
` ` 
#### OhMyZSH
[Sitio Web](https://ohmyz.sh/#install) de Instalacion. Debes tener el paquete `curl` instalado en el PC con Arch Linux

#### NeoVim
` sudo pacman -S neovim ` 
Crear la configuracion
* Crear la carpeta `mkdir /.config/nvim `
* Crear el archivo de configuracion ` touch init.vim `
* Editar la configuracion `nvim /.config/nvim/init.vim `

#### Gadgets de Terminal
` sudo pacman -S conky neofetch fastfetch cava tty-clock`

#### Terminal (Kitty) Mi configuracion
` sudo pacman -S kitty ` 
#### Ajustes para Entorno Grafico basado en Wayland (Hyprland)


Probado en Junio 2025
🎯 ©2025. Creado y diseñado por 👨‍💻 Darwin Garcia. 🇨🇴
