# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/graphics/R-cran-rgdal/Makefile 338247 2013-12-31 07:09:03Z tota $

PORTNAME=	rgdal
DISTVERSION=	0.8-16
CATEGORIES=	graphics
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Bindings for the Geospatial Data Abstraction Library

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

LIB_DEPENDS=	gdal:${PORTSDIR}/graphics/gdal \
		proj:${PORTSDIR}/graphics/proj
RUN_DEPENDS=	R-cran-sp>=1.0.9:${PORTSDIR}/math/R-cran-sp

USES=	cran:auto-plist

R_POSTCMD_INSTALL_OPTIONS+=	--configure-args="--with-proj-lib=${LOCALBASE}/lib"

.include <bsd.port.mk>
