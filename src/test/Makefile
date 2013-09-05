CC = gcc
CFLAGS = -g -O2 -O2 -DNDEBUG -Wall -std=gnu9x -pedantic -I.. -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -I.. -I/usr/include -I../.. -I../ntproba
LDFLAGS =  -L/usr/lib -L/usr/lib -lm -lexpat -lpthread  -lssl -lcrypto -lqwt-qt4 

all: alltests

alltests: alltests.o ../libophcrack.a ../samdump2/libsamdump2.a
	$(CC) $^ -o $@ $(LDFLAGS)

depend:
	$(CC) $(CFLAGS) -MM *.c >.depend

include .depend
