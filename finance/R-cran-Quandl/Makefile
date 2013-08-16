# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD$

PORTNAME=	Quandl
PORTVERSION=	2.0
CATEGORIES=	finance
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Quandl Data Connection

LICENSE=	GPLv2

RUN_DEPENDS=	R-cran-RCurl:${PORTSDIR}/ftp/R-cran-RCurl \
		R-cran-RJSONIO:${PORTSDIR}/converters/R-cran-RJSONIO \
		R-cran-zoo:${PORTSDIR}/math/R-cran-zoo \
		R-cran-xts:${PORTSDIR}/math/R-cran-xts

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
