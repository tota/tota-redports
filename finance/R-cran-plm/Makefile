# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/finance/R-cran-plm/Makefile 337846 2013-12-28 10:28:40Z dbn $

PORTNAME=	plm
DISTVERSION=	1.4-0
CATEGORIES=	finance
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Linear Models for Panel Data

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

RUN_DEPENDS=	R-cran-bdsmatrix>0:${PORTSDIR}/math/R-cran-bdsmatrix \
		R-cran-Formula>=0.2.0:${PORTSDIR}/math/R-cran-Formula \
		R-cran-sandwich>0:${PORTSDIR}/math/R-cran-sandwich \
		R-cran-zoo>0:${PORTSDIR}/math/R-cran-zoo

USES=	cran:auto-plist

.include <bsd.port.mk>
