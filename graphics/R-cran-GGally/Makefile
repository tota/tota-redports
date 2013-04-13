# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD$

PORTNAME=	GGally
PORTVERSION=	0.4.2
CATEGORIES=	graphics
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Extension to ggplot2

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

RUN_DEPENDS=	R-cran-ggplot2>=0.9.2.1:${PORTSDIR}/graphics/R-cran-ggplot2 \
		R-cran-reshape>=0.8.4:${PORTSDIR}/devel/R-cran-reshape

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
