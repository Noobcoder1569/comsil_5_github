cc = gcc
target = animal.exe
objects = dog.o blackcow.o turtle.o main.o

$(target) : $(objects)
	$(cc) -o $(target) $(objects)

$(objects) : animal.h

.Phony : clean

clean :
	rm $(target) $(objects)
