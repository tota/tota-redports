# New ports collection makefile for:	R-cran-gmm
# Date created:		2011-09-11
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: ports/finance/R-cran-gmm/Makefile,v 1.8 2012/05/26 14:00:57 tota Exp $
#

PORTNAME=	gmm
DISTVERSION=	1.4-1
CATEGORIES=	finance
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Generalized Method of Moments and Generalized Empirical Likelihood

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

RUN_DEPENDS=	R-cran-sandwich>0:${PORTSDIR}/math/R-cran-sandwich

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
