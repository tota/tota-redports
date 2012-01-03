# New ports collection makefile for:	R-cran-scrapeR
# Date created:		2011-08-28
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: ports/www/R-cran-scrapeR/Makefile,v 1.4 2011/11/27 07:02:15 bf Exp $
#

PORTNAME=	scrapeR
PORTVERSION=	0.1.6
PORTREVISION=	2
CATEGORIES=	www
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Tools for Scraping Data from HTML and XML Documents

RUN_DEPENDS=	R-cran-XML>0:${PORTSDIR}/textproc/R-cran-XML \
		R-cran-RCurl>0:${PORTSDIR}/ftp/R-cran-RCurl

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
