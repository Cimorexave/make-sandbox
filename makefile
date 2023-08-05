
CC=gcc
CFLAGS=-g -Wall
OBJFOLDER=./obj
BINFOLDER=./bin
BIN=main
OBJS= ./obj/mt.o

all: $(BIN)

main: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(BINFOLDER)/$(BIN)

%.o:
	$(CC) $(CFLAGS) mt.c -c -o $(OBJS)

clean:
	rm bin/* obj/*