
LIB_CFLAGS += -O2 -Wall -fPIC -shared 
LDL_FLAG := -ldl

all: libnodelay.c
	$(CC) $(LIB_CFLAGS) $(CFLAGS) -o libnodelay.so libnodelay.c $(LDL_FLAG)

32: libnodelay.c
	$(CC) -m32 $(LIB_CFLAGS) $(CFLAGS) -o libnodelay32.so libnodelay.c $(LDL_FLAG)

64: libnodelay.c
	$(CC) -m64 $(LIB_CFLAGS) $(CFLAGS) -o libnodelay64.so libnodelay.c $(LDL_FLAG)

test: libnodelay.c test.c
	$(CC) -O2 -Wall -o test test.c

clean:
	rm *.so test
