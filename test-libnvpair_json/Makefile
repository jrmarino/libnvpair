SCRIPTS = \
	json_00_blank \
	json_01_boolean \
	json_02_numbers \
	json_03_empty_arrays \
	json_04_number_arrays \
	json_05_strings \
	json_06_nested \
	json_07_nested_arrays

CFLAGS=		-g -Wall -Wno-format -fPIC -O2 -std=c99 -I..
CPPFLAGS=	-DPIC

all: scan

print_json: print_json.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -o ${.TARGET} ${.ALLSRC} \
		-L.. -R${.CURDIR:H} -lnvpair

scan: print_json
.for script in ${SCRIPTS}
	/usr/local/bin/ksh93 ${script}.ksh
.endfor

clean:
	rm -f print_json $(OBJS)
