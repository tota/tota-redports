# New ports collection makefile for:	R-cran-YjdnJlp
# Date created:		2011-11-09
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD$
#

PORTNAME=	YjdnJlp
PORTVERSION=	0.9.8
CATEGORIES=	japanese
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Text Analysis by Yahoo! Japan Develper Network

LICENSE=	BSD

RUN_DEPENDS=	R-cran-XML>0:${PORTSDIR}/textproc/R-cran-XML \
		R-cran-RCurl>0:${PORTSDIR}/ftp/R-cran-RCurl

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.pre.mk>

PKGNAMEPREFIX:= ${PKGNAMEPREFIX}R-cran-

.include <bsd.port.post.mk>
