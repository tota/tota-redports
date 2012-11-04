# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/ftp/R-cran-RCurl/Makefile 305737 2012-10-11 19:23:56Z tota $

PORTNAME=	RCurl
DISTVERSION=	1.95-3
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
