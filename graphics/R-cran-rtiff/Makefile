# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/graphics/R-cran-rtiff/Makefile 338350 2014-01-01 03:36:49Z tota $

PORTNAME=	rtiff
PORTVERSION=	1.4.4
CATEGORIES=	graphics
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	TIFF reader for R

LICENSE=	GPLv3

LIB_DEPENDS=	libtiff.so:${PORTSDIR}/graphics/tiff
RUN_DEPENDS=	R-cran-pixmap>0:${PORTSDIR}/graphics/R-cran-pixmap

USES=	cran:auto-plist

LDFLAGS+=	-L${LOCALBASE}/lib

.include <bsd.port.mk>
