
;	Esto es lo que yo llamo bootstrap loader. Realmente,
; es solo la parte del kernel que hace que sea booteable.
; Pero no se trata de un bootloader. De bootloader uso grub. 
; Lo del bootloader lo dejo pa otro día mejor que no estoy de animo.

; esto esta hecho para nasm en notación de intel, asi como dato redundante.

[bits 32]		; no tengo lo que hace falta para salir de modo compatibilidad. Eso tambien lo dejo para otra ocasion
global start
extern kernel_main	; kernel symbol

section .multiboot

align 0x4	; los numerillos de abajo tienen que estar en formacion, que sino al grub se le va la pinza y se queja de todo
 
MODULEALIGN equ  1<<0
MEMINFO     equ  1<<1
FLAGS       equ  MODULEALIGN
MAGIC       equ  0x1BADB002		; esto es magia potagia
CHECKSUM    equ -(MAGIC + FLAGS)	; magic + flags - checksum tiene que ser 0
 
MultiBootHeader:	; se supone que con esto asi colocao, esto bootea easy
   dd MAGIC
   dd FLAGS
   dd CHECKSUM
 
start: 		; la magia tiene lugar aqui
push ebx	; esto no esta claro por que está aqui, pero el ebx a veces hace cosas raras. asi que lo he puesto pq me ha parecido bien
call kernel_main	; vítores y alegía en las calles de mi pueblo, si esto tira, lo demás es coser y cantar

