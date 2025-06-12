## 😎💪 Metodo Dificl (Para usuarios intermedios y avanzados. No necesitas ArchInstall).
_(Este segmento se esta actualizando)_
<p></p>
Este es el paso de instalacion manual de Arch Linux para tu equipo, y se componen de estos pasos:
* Particiones del disco duro
* Creacion del arranque
* Paquetes de Instalacion requeridos
* Configuracion del idioma
* Asignar nombre a la maquina
* Configurar nuevo usuario (incluido Root)

### Particiones del disco duro
Las particiciones del disco duro en tu maquina se identifican como:
* nvme0n1 << Disco Duro NVMe SSD
* sda1 << Disco duro SATA o USB Externa (Puede ser disco duro o Pendrive)

#### Estructura de Particiones Linux
Minimo deben tener este ajuste para que pueda arrancar Arch Linux:
* `/ ` [ext4] _Raiz o Particion principal del Sistema_
* `/swap` [Linux Swap] _Memoria Virtual. Debe ser igual o la mitad de la RAM de tu PC instalada. Si tienes poca ram, se recomienda el doble de la RAM instalada de tu PC_
* `/boot` [fat32/EFIBOOT] _512MB o 1GB de tamano. Debe estar en el primer orden y marcar la particion como arranque_

##### Comprobar si es BIOS o UEFI
` ls /sys/firmware/efi/efivars `
#### Comprobar el disco duro (Previamente sin formato, Solo informacion)
` fdisk -l `

### Particiones del disco duro
Puedes utilizar una utilidad llamada `cfdisk`  o `cgdisk`

##### Crear EFI de arranque

X es el numero de la particion. 
* (sda) (sdb) = Discos SATA o USB Externo: `mkfs.fat -F32 /dev/sdaX`
* (nvme0nX) = Discos NVMe SSD :  `mkfs.fat -F32 /dev/nvme0n1pX`

  
##### Crear la particion SWAP manualmente

* `mkswap /dev/sdaX ` o ` mkswap /dev/nvme0n1pX `
* `swapon /dev/sdaX ` o ` swapon /dev/nvme0n1pX `

##### Crear la particion Raiz /
* NVMe (dev/nvme0)
X es el numero de la particion: `mkfs.ext4 /dev/nvme0n1pX `
* SATA (dev/sda0)
X es el numero de la particion: `mkfs.ext4 /dev/sdaX `

#### Cambiar el idioma del Teclado (Puede ser al principio o durante el proceso de instalacion)
* Configurar el idioma del teclado en la sesion actual: `loadkeys la-latin1 `
* Crear el idioma del teclado 
** Español Latinoamerica: `echo KEYMAP=la-latin1 > /etc/vconsole.conf `
** Español España `echo KEYMAP=ES > /etc/vconsole.conf `
* Verificar el cambio del idioma del teclado: `vim /etc/vconsole.conf ` o `localectl status` (Despues de reinicio)
* Configurar el teclado latino de forma permanente `Setxkbmap -layout latam -variant nodeadkeys `

#### Cambiar Zona Horaria (Aplica para Colombia/Bogota)
- `ln -sf /usr/share/zoneinfo/America/Bogota /etc/localtime `
- `hwclock –-systohc || hwclock -w `
- `echo LANG=es_CO.UTF-8 > /etc/locale.conf `
- `locale-gen `

#### Cambiar el nombre de la maquina

- Comando en terminal para cambiar el nombre de maquina (Debe ser usuario Root):
`echo myhostname > /etc/hostname`
- Para verificar o escribir manualmente:
`vim /etc/hostname ` o ` nano /etc/hostname`

#### Instalacion de Repositorios
El servicio de repositorios por defecto y oficial para Arch Linux es Pacman. Desde aqui puedes instalar todos los complementos y apps que necesites para tu PC con Arch Linux
* `sudo pacman -S ` <- Instalar un programa
* `sudo pacman -Syu ` <- Actualizar tu sistema 
* `sudo pacman -R ` <- Desinstalar un programa
* `sudo pacman -Rcs ` <- Desinstalar completamente un programa con sus complementos
  
#### Post Instalacion (Metodo Dificil)

Activar el chroot (Pasar a Instalacion de Paquetes Arch Linux desde la consola de comandos inicial)
`arch-chroot /mnt  `
Seleccionar laa Instalacion de Paquetes
`pacstrap /mnt `
Paquetes minimos requeridos para funcionar tu PC con Arch Linux durante la instalacion
* Arch Linux minimo (Sin Interfaz Grafica, Sin Gestor de Usuario)
`pacstrap /mnt base base-devel linux linux-firmware linux-headers sudo grub efibootmgr htop vim ranger fastfetch zsh ntfs-3g gvfs networkmanager netctl dhcp wpa_supplicant dialog  dosfstools openssh iwctl`
* Arch Linux (Interfaz Grafica GNOME, Gestor de Usuario GDM)
`pacstrap /mnt  base base-devel git linux linux-firmware linux-headers efibootmgr htop vim ranger fastfetch zsh gnome gnome-extra gnoeme-tweaks galculator gparted gdm networkmanager ntfs-3g gvfs networkmanager netctl dhcp wireless_tools wpa_supplicant dialog dosfstools openssh iwd iwctl xorg-server xorg-xinit xdg-utils`
* Arch Linux con nucleo de Linux LTS (Interfaz Grafica GNOME, Gestor de Usuario GDM)
`pacstrap /mnt base base-devel linux linux-firmware linux-lts linux-headers linux-lts-headers efibootmgr xorg-server xorg-xinit vim `
* Arch Linux con nucleo de Linux Hardened (Interfaz Grafica GNOME, Gestor de Usuario GDM)
`pacstrap /mnt  `
*  Arch Linux con nucleo de Linux Zen (Interfaz Grafica GNOME, Gestor de Usuario GDM)
`pacstrap /mnt  `

[Regresar](https://github.com/darwin-garcia/Arch-Linux-Hyprland/blob/main/Instrucciones/readme.md) al inicio de las Instrucciones

Probado en Junio 2025
🎯 ©2025. Creado y diseñado por 👨‍💻 Darwin Garcia. 🇨🇴
