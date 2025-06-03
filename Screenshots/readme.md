## Instrucciones (Espagnol)
Debes descargar la version mas reciente de Arch Linux y darle formato en un Pendrive. Recomiendo BalenaEtcher
### Paso de Instalacion
* Entra a la UEFI/BIOS de tu PC
* Deshabilita el Arranque Seguro (Secure Boot)
* Cambia el orden de arranque a la USB Pendrive que tenga el Arch Linux en el primer orden.
* Guarda los cambios de la UEFI/BIOS de tu PC

  Si realizas Dual Boot asegurate de reducir la particion de Windows primero
  
#### Particiones del disco duro
Las particiciones del disco duro en tu maquina se identifican como:
nvme0 <<Disco Duro NVMe SSD
sda0 << Disco duro SATA o USB Externa (Puede ser disco duro o Pendrive)
Minimo deben tener este ajuste para que pueda arrancar Arch Linux:
* / [ext4]
* /swap [Linux Swap] Debe ser igual o la mitad de la RAM de tu PC
* /boot [fat32/EFIBOOT] 512MB o 1GB de tamano. Debe estar en el primer orden y marcar la particion como arranque

##### Comprobar si es BIOS o UEFI
` ls /sys/firmware/efi/efivars `
#### Comprobar el disco duro (Previamente sin formato, Solo informacion)
` fdisk -l `
##### Crear EFI de arranque

##### NVMe (dev/nvme0)
##### SATA (dev/sda0)

#### Cambiar el idioma del Teclado (Puede ser al principio o durante el proceso de instalacion)
* Configurar el idioma del teclado en la sesion actual: ` loadkeys la-latin1 `
* Crear el idioma del teclado 
Espanol Latinoamerica: ` echo KEYMAP=la-latin1 > /etc/vconsole.conf `
Espanol Espana ` echo KEYMAP=ES > /etc/vconsole.conf `
* Verificar el cambio del idioma del teclado: `vim /etc/vconsole.conf  ` 

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
#### Post Instalacion (Metodo Dificil)

#### Instalacion de Repositorios

#### Activar Paquetes y Servicios despues de la instalacion de Arch Linux

#### Instalacion de Entorno Grafico Hyprland

#### Instalacion de Entorno Grafico BSPWM

#### Codecs Multimedia

#### OhMyZSH

#### NeoVim

#### Gadgets de Terminal

#### Terminal (Kitty) Mi configuracion

#### Ajustes para Entorno Grafico basado en Wayland (Hyprland)

Probado en Junio 2025
🎯 ©2025. Creado y diseñado por 👨‍💻 Darwin Garcia. 🇨🇴
