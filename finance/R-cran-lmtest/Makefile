# Created by: Wen Heping <wen@FreeBSD.org>
# $FreeBSD: head/finance/R-cran-lmtest/Makefile 337846 2013-12-28 10:28:40Z dbn $

PORTNAME=	lmtest
DISTVERSION=	0.9-31
PORTREVISION=	3
CATEGORIES=	finance
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	wen@FreeBSD.org
COMMENT=	Testing Linear Regression Models

LICENSE=	GPLv2

RUN_DEPENDS=	R-cran-zoo>=0:${PORTSDIR}/math/R-cran-zoo \
		R-cran-strucchange>0:${PORTSDIR}/finance/R-cran-strucchange \
		R-cran-sandwich>=2.2.4:${PORTSDIR}/math/R-cran-sandwich

USES=	cran:auto-plist

.include <bsd.port.mk>
