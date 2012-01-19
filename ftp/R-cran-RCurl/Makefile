# New ports collection makefile for:	R-cran-RCurl
# Date created:		2011-08-28
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: ports/ftp/R-cran-RCurl/Makefile,v 1.8 2012/01/18 23:04:02 bf Exp $
#

PORTNAME=	RCurl
DISTVERSION=	1.9-5
CATEGORIES=	ftp
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	General network client interface for R

LICENSE=	BSD

BUILD_DEPENDS=	curl-config:${PORTSDIR}/ftp/curl
RUN_DEPENDS=	R-cran-bitops>0:${PORTSDIR}/devel/R-cran-bitops
LIB_DEPENDS=	curl:${PORTSDIR}/ftp/curl

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
