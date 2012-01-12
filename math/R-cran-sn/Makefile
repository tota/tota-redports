# New ports collection makefile for:	R-cran-sn
# Date created:		2012-01-12
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD$
#

PORTNAME=	sn
DISTVERSION=	0.4-17
CATEGORIES=	math
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	The skew-normal and skew-t distributions

LICENSE=	GPLv2

RUN_DEPENDS=	R-cran-mnormt>=1.3.1:${PORTSDIR}/math/R-cran-mnormt

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
