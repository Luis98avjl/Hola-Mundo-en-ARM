@@ Instituto Tecnologico de Tijuana
 @@ Depto de Sistemas y Computación
 @@ Ing. En Sistemas Computacionales
 @@
 @@ Autor : Luis Angel Valenzuela Juarez
 @@ NickName: Luis98avjl
 @@ Repositorio: https://github.com/Luis98avjl/Hola-Mundo-en-ARM/issues 
 @@ Fecha de revisión: 08/04/2022
 @@
  @ Objetivo del programa: 
  @ Preguntar el nombre y desplegarlo.
  @
  @ Entradas, procesos y salidas:
  @ ARM32
  @
  @ Errores a reportar / retroalimentar
  @ Ninguno

.section        .bss
.comm buffer, 48

.section        .data
msg:
        .ascii  " \nPor favor alimente un nombre: "
msgLen = . - msg
msg2:
        .ascii  "Hola "
msg2Len = . - msg2

.section        .text
.globl .start
.start:

mov r0, $1
ldr r1, =msg
ldr r2, =msgLen
mov r7, $4
svc $0

mov r7, $3
mov r0, $1
ldr r1, =buffer
mov r2, $0x30
svc $0

mov r0, $1
ldr r1, =msg2
ldr r2, =msg2Len
mov r7, $4
svc $0

mov r0, $1
ldr r1, =buffer
mov r2, $0x30
mov r7, $4
svc $0