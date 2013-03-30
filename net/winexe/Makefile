# New ports collection makefile for:    winexe
# Date created:                         29 Aug 2012
# Whom:                                 David Yeske <dyeske@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	winexe
PORTVERSION=	1.00
CATEGORIES=	net
MASTER_SITES=	SF/${PORTNAME}

MAINTAINER=	ports@freebsd.org
COMMENT=	Remotely execute commands on Windows systems

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

USE_AUTOTOOLS=	automake:env autoconf:env
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_ICONV=	yes
USE_PYTHON_BUILD=yes

MAKE_ENV+=	LDFLAGS+=-static

PLIST_FILES=	bin/winexe

CONFIGURE_ARGS+=	--disable-external-libtdb
CONFIGURE_ARGS+=	--disable-external-libldb
CONFIGURE_ARGS+=	--disable-external-libtalloc
CONFIGURE_ARGS+=	--disable-external-libtevent
CONFIGURE_ARGS+=	--disable-gnutls
CONFIGURE_ARGS+=	--with-included-popt
CONFIGURE_ARGS+=	--disable-external-heimdal
CONFIGURE_ARGS+=	--enable-fhs
CONFIGURE_ARGS+=	--enable-static

CONFIGURE_WRKSRC=	${WRKSRC}/source4
BUILD_WRKSRC=	${WRKSRC}/source4
ALL_TARGET=	basics bin/winexe

.include <bsd.port.pre.mk>

run-autotools:
	(cd ${CONFIGURE_WRKSRC} && ${SETENV} ${AUTOTOOLS_ENV} ./autogen.sh)

do-install:
	${INSTALL_PROGRAM} ${BUILD_WRKSRC}/bin/winexe ${PREFIX}/bin

.include <bsd.port.post.mk>
