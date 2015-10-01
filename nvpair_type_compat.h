/*
 * Define types used on Illumos but not on DragonFly or FreeBSD
 */

#ifndef	_TYPE_COMPAT_H
#define	_TYPE_COMPAT_H

typedef unsigned char	uchar_t;
typedef int64_t	hrtime_t;
typedef enum boolean { B_FALSE, B_TRUE } boolean_t;

#endif
