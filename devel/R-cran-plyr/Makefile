# New ports collection makefile for:	R-cran-plyr
# Date created:		2011-08-16
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: ports/devel/R-cran-plyr/Makefile,v 1.4 2011/11/27 07:02:08 bf Exp $
#

PORTNAME=	plyr
PORTVERSION=	1.6
PORTREVISION=	2
CATEGORIES=	devel
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Tools for splitting, applying and combining data

RUN_DEPENDS=	R-cran-itertools>0:${PORTSDIR}/devel/R-cran-itertools \
		R-cran-iterators>0:${PORTSDIR}/devel/R-cran-iterators

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
