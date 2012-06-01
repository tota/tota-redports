# New ports collection makefile for:	R-cran-strucchange
# Date created:		2012-02-05
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: ports/finance/R-cran-strucchange/Makefile,v 1.3 2012/05/04 20:56:05 bf Exp $
#

PORTNAME=	strucchange
DISTVERSION=	1.4-7
CATEGORIES=	finance
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Testing, Monitoring, and Dating Structural Changes

LICENSE=	GPLv2

RUN_DEPENDS=	R-cran-zoo>0:${PORTSDIR}/math/R-cran-zoo \
		R-cran-sandwich>0:${PORTSDIR}/math/R-cran-sandwich

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
