# New ports collection makefile for:	R-cran-gmm
# Date created:		2011-09-11
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: ports/finance/R-cran-gmm/Makefile,v 1.7 2012/05/04 20:56:05 bf Exp $
#

PORTNAME=	gmm
DISTVERSION=	1.4-0
CATEGORIES=	finance
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Generalized Method of Moments and Generalized Empirical Likelihood

LICENSE=	GPLv2

RUN_DEPENDS=	R-cran-sandwich>0:${PORTSDIR}/math/R-cran-sandwich

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
