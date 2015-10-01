/*
 * Define types used on Illumos but not on DragonFly or FreeBSD
 */

#ifndef	_TYPE_COMPAT_H
#define	_TYPE_COMPAT_H

typedef unsigned char	uchar_t;
typedef	long long	longlong_t;
typedef longlong_t	hrtime_t;
typedef unsigned long	ulong_t;
typedef enum boolean { B_FALSE, B_TRUE } boolean_t;

#define	FMNAMESZ	8

#endif
