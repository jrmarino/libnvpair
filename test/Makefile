CC = /usr/bin/gcc
DEBUG_FLAGS =   -g
WARN_FLAGS =	-Wall
PIC_FLAGS =     -fPIC
OPT_FLAGS =     -O2
C_STDFLAGS =    -std=c99
INC_FLAGS =	-I..

CFLAGS =        $(DEBUG_FLAGS) \
                $(WARN_FLAGS) \
                $(PIC_FLAGS) \
                $(OPT_FLAGS) \
                $(C_STDFLAGS) \
		$(INC_FLAGS)

LF64_DEFS =     -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
PIC_DEFS =      -DPIC

CPPFLAGS =      $(LF64_DEFS) $(PIC_DEFS)

all:	hello_nv dyn-hello_nv

hello_nv: hello_nv.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -o ${.TARGET} ${.ALLSRC} ../libnvpair.a

dyn-hello_nv: hello_nv.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -o ${.TARGET} ${.ALLSRC} \
		-L.. -R${.CURDIR:H} -lnvpair

clean:
	rm -rf $(OBJS) hello_nv dyn-hello_nv
