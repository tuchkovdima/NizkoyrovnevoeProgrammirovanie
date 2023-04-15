output: main.o grlib.a
	mingw32-gcc-6.3.0.exe main.o grlib.a -o output

main.o: main.c
	mingw32-gcc-6.3.0.exe -c main.c

grlib.a: vstavka.o vstavka.h
	mingw32-gcc-ar.exe -rsc grlib.a vstavka.o

vstavka.o:
	mingw32-gcc-6.3.0.exe -c vstavka.c

clean:
	rm .o.a *.exe