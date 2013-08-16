# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD$

PORTNAME=	Quandl
PORTVERSION=	2.0
CATEGORIES=	finance
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Quandl Data Connection

LICENSE=	GPLv2

RUN_DEPENDS=	R-cran-RCurl>0:${PORTSDIR}/ftp/R-cran-RCurl \
		R-cran-RJSONIO>0:${PORTSDIR}/converters/R-cran-RJSONIO \
		R-cran-zoo>0:${PORTSDIR}/math/R-cran-zoo \
		R-cran-xts>0:${PORTSDIR}/math/R-cran-xts

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
