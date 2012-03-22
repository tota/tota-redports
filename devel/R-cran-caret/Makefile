# New ports collection makefile for:	R-cran-caret
# Date created:		2011-08-30
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: ports/devel/R-cran-caret/Makefile,v 1.20 2012/03/03 16:59:26 bf Exp $
#

PORTNAME=	caret
DISTVERSION=	5.15-023
CATEGORIES=	devel
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Classification and Regression Training

LICENSE=	GPLv2

RUN_DEPENDS=	R-cran-reshape>0:${PORTSDIR}/devel/R-cran-reshape \
		R-cran-plyr>0:${PORTSDIR}/devel/R-cran-plyr \
		R-cran-foreach>0:${PORTSDIR}/devel/R-cran-foreach

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
