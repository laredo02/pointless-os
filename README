
Pointless. El minimalismo llevado al extremo


Para ejecutar el SO, puedes cargar la imagen /build/PointlessOS.iso en 
quemu, VirtualBox, botch, gnome-boxes o donde te apetezca. Sin más.
PD: si vas a usar qemu mejor con: qemu-system-i386 -cdrom ../build/PointlessOS.iso
que es lo que he usao yo


Si quieres curiosear, la estructura del proyecto es una cosa asín:

.
├── build
│   ├── bin
│   │   └── kernel.bin
│   ├── iso
│   │   └── boot
│   │       ├── grub
│   │       │   └── grub.cfg
│   │       └── kernel.bin
│   ├── obj
│   │   ├── bootstrap.o
│   │   └── kernel.o
│   └── PointlessOS.iso
├── CANDIDATURA.txt
├── kernel
│   ├── arch
│   │   └── i386
│   │       ├── bootstrap.asm
│   │       └── linker.ld
│   ├── kernel
│   │   └── kernel.cpp
│   └── Makefile
└── README

Donde dice kernel, está el código. Lo que viene siendo el kernel, es kernel.cpp.
No creo que se puede llamar ni kernel es más bien un driver de texto VGA cutre.
En la carpeta build está el producto de la compilación,
He usado gcc g++ (para el kernel) nasm (para el bootstrap loader/bootloader secundario/bootloader para niños)
para el código y grub y xorriso para crear la ISO. Maemia k rima


Si te quieres pasar el juego, puedes compilar el proyecto.
No prometo que funcione a la primera pero... Se intenta.

Si lo vas a compilar y no quieres morir en el intento, sería buena idea usar debian 32-bits.
Para compilarlo deberías situarte en /kernel y desde ahí hacer algo del tipo "make all".
en su defecto, puedes tomar el camino largo y hacer un "make bootstrap.o kernel.o kernel.bin kernel iso"
y si quieres hacerlo de otra forma, te miras el Makefile.
Vas a necesitar las siguientes dependencias (creo que nada más): ld g++ xorriso grub


Como dato interesante, resulta que funciona de vd y se puede cargar en un USB para probarlo
(solo funciona modo compatibilidad x86 o sea que tampoco sirve para nada pero bueno...). El tema:
con "dd if=kernel/PointlessOS of=/dev/comosellametudispositivo status=progress" 
lo metes en un usb o algo y luego lo enchufas en un ordena y lo pruebas.
Aunque tampoco es plan.

