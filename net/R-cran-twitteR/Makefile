# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/net/R-cran-twitteR/Makefile 337846 2013-12-28 10:28:40Z dbn $

PORTNAME=	twitteR
PORTVERSION=	1.1.7
PORTREVISION=	2
CATEGORIES=	net
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	R based Twitter client

LICENSE=	ART20

RUN_DEPENDS=	R-cran-RCurl>0:${PORTSDIR}/ftp/R-cran-RCurl \
		R-cran-rjson>=0.2.12:${PORTSDIR}/converters/R-cran-rjson \
		R-cran-ROAuth>=0.9.3:${PORTSDIR}/security/R-cran-ROAuth

USES=	cran:auto-plist

.include <bsd.port.mk>
