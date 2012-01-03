# New ports collection makefile for:	R-cran-diagram
# Date created:		2011-09-09
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: ports/graphics/R-cran-diagram/Makefile,v 1.5 2011/12/20 12:29:47 tota Exp $
#

PORTNAME=	diagram
PORTVERSION=	1.6
CATEGORIES=	graphics
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Functions for visualising simple graphs, plotting flow diagrams

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

RUN_DEPENDS=	R-cran-shape>0:${PORTSDIR}/graphics/R-cran-shape

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
