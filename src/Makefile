#  build Demo.c

OBJECTS=Demo

all:$(OBJECTS)

Demo:max.o min.o main.o
	$(CC) $(LDFLAGS) $^ -o $@

max.o:max.c max.h
	$(CC) $(CFLAGS) -c $<

min.o:min.c min.h
	$(CC) $(SFLAGS) -c $<

.PHONY:clean

clean:
	@-rm *.o Demo

