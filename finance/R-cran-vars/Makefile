# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/finance/R-cran-vars/Makefile 337846 2013-12-28 10:28:40Z dbn $

PORTNAME=	vars
DISTVERSION=	1.5-2
PORTREVISION=	2
CATEGORIES=	finance
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	VAR Modelling

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

RUN_DEPENDS=	R-cran-strucchange>0:${PORTSDIR}/finance/R-cran-strucchange \
		R-cran-urca>=1.1.6:${PORTSDIR}/finance/R-cran-urca \
		R-cran-lmtest>=0.9.26:${PORTSDIR}/finance/R-cran-lmtest \
		R-cran-sandwich>=2.2.4:${PORTSDIR}/math/R-cran-sandwich

USES=	cran:auto-plist

.include <bsd.port.mk>
