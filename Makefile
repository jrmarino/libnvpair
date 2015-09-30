#
# Use base mk files to generate libraries (DragonFly and FreeBSD)
#

LIB=		nvpair
SHLIB_MAJOR=	1
SRCS=		fnvpair.c \
		libnvpair.c \
		nvpair_alloc_system.c \
		nvpair_alloc_fixed.c \
		nvpair.c \
		nvpair_json.c

LF64_DEFS=	-D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
CFLAGS+=	$(LF64_DEFS)

VERSION_DEF=	${.CURDIR}/Versions.def
SYMBOL_MAPS=	${.CURDIR}/mapfile-vers

NOPROFILE=	yes
NO_PROFILE=	yes

.include <bsd.lib.mk>
