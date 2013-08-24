# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD$

PORTNAME=	rgl
PORTVERSION=	0.93.952
CATEGORIES=	graphics
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	3D Real-Time Visualization Device System for R

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

USE_GL=	glut
USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

OPTIONS_DEFINE=	FTGL PNG

OPTIONS_DEFAULT=	FTGL PNG

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MFTGL}
LIB_DEPENDS+=	ftgl:${PORTSDIR}/graphics/ftgl
CONFIGURE_ARGS+=        --enable-ftgl
.else
CONFIGURE_ARGS+=	--disable-ftgl
.endif

.if ${PORT_OPTIONS:MPNG}
LIB_DEPENDS+=	png15:${PORTSDIR}/graphics/png
CONFIGURE_ARGS+=	--enable-libpng
.else
CONFIGURE_ARGS+=	--disable-libpng
.endif

.include <bsd.port.mk>
