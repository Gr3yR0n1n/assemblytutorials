; ----------------------------------------------------------------------------------------
; Writes "Hello, World" to the console using only system calls. Runs on 64-bit Linux only.
; To assemble and run:
;
;     nasm -felf64 hello.asm && ld hello.o && ./a.out
;
; Register calling order for 64bit OSX/BSD/linux
;		RDI, RSI, RDX, RCX, R8, R9, [XYZ]MM0–7
; ----------------------------------------------------------------------------------------

%include	'functions.asm'

          global    _start

          section   .text
_start:   
					mov				rsi, 0

nextNumber:
					inc				rsi
					mov				rax, rsi
					call			iprintLF
					cmp				rsi, 10
					jne				nextNumber
					
					call			quit
