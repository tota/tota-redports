# New ports collection makefile for:	gti
# Date created:		2012-08-16
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: head/games/gti/Makefile 302663 2012-08-17 03:15:54Z tota $
#

PORTNAME=	gti
PORTVERSION=	1.0.3
PORTREVISION=	1
CATEGORIES=	games

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Just a silly git launcher, basically. Inspired by sl

USE_GITHUB=	yes
GH_ACCOUNT=	rwos
GH_TAGNAME=	v${PORTVERSION}
GH_COMMIT=	8865ed5

ALL_TARGET=	${PORTNAME}

PLIST_FILES=	bin/${PORTNAME}

do-build:
	@${CC} ${CFLAGS} -o ${WRKSRC}/${PORTNAME} ${WRKSRC}/${PORTNAME}.c

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin

.include <bsd.port.mk>