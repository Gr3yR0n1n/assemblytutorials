build: clean compile link

compile:
	nasm -f elf64 helloworld.asm -o helloworld.o

link:
	ld helloworld.o -o helloworld

clean:
	rm -f *.o; rm -f helloworld