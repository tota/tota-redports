# New ports collection makefile for:	R-cran-spdep
# Date created:		2011-09-17
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: ports/math/R-cran-spdep/Makefile,v 1.10 2012/05/04 20:56:10 bf Exp $
#

PORTNAME=	spdep
DISTVERSION=	0.5-46
CATEGORIES=	math
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Spatial dependence: weighting schemes, statistics and models

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

RUN_DEPENDS=	R-cran-sp>=0.9:${PORTSDIR}/math/R-cran-sp \
		R-cran-maptools>=0.5.4:${PORTSDIR}/astro/R-cran-maptools \
		R-cran-deldir>0:${PORTSDIR}/math/R-cran-deldir \
		R-cran-coda>0:${PORTSDIR}/math/R-cran-coda

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
