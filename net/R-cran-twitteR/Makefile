# New ports collection makefile for:	R-cran-twitteR
# Date created:		2011-09-04
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: ports/net/R-cran-twitteR/Makefile,v 1.11 2012/01/18 23:04:06 bf Exp $
#

PORTNAME=	twitteR
PORTVERSION=	0.99.17
CATEGORIES=	net
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	R based Twitter client

LICENSE=	ART20

RUN_DEPENDS=	R-cran-RCurl>0:${PORTSDIR}/ftp/R-cran-RCurl \
		R-cran-RJSONIO>0:${PORTSDIR}/converters/R-cran-RJSONIO \
		R-cran-ROAuth>=0.9.0:${PORTSDIR}/security/R-cran-ROAuth

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
