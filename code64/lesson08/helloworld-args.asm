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
					pop				rsi

nextArg:
					cmp				rsi, 0x0
					jz				noMoreArgs
					pop				rax
					call			sprintLF
					dec				rsi
					jmp				nextArg

noMoreArgs:
					call			quit

