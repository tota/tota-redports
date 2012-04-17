# New ports collection makefile for:	R-cran-foreach
# Date created:		2011-09-04
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: ports/devel/R-cran-foreach/Makefile,v 1.9 2012/03/15 18:43:12 tota Exp $
#

PORTNAME=	foreach
PORTVERSION=	1.4.0
CATEGORIES=	devel
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Foreach looping construct for R

LICENSE=	AL2

RUN_DEPENDS=	R-cran-iterators>=1.0.0:${PORTSDIR}/devel/R-cran-iterators

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
