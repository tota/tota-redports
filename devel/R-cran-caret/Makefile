# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/devel/R-cran-caret/Makefile 300896 2012-07-14 13:54:48Z beat $

PORTNAME=	caret
DISTVERSION=	5.15-044
CATEGORIES=	devel
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Classification and Regression Training

LICENSE=	GPLv2

RUN_DEPENDS=	R-cran-reshape>0:${PORTSDIR}/devel/R-cran-reshape \
		R-cran-plyr>0:${PORTSDIR}/devel/R-cran-plyr \
		R-cran-foreach>0:${PORTSDIR}/devel/R-cran-foreach

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
