# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/math/R-cran-RcppArmadillo/Makefile 348084 2014-03-13 15:11:54Z tota $

PORTNAME=	RcppArmadillo
PORTVERSION=	0.4.100.2.1
CATEGORIES=	math
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Rcpp integration for Armadillo templated linear algebra library

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

RUN_DEPENDS=	R-cran-Rcpp>=0.11.0:${PORTSDIR}/devel/R-cran-Rcpp

USES=	cran:auto-plist

post-patch:
	@${REINPLACE_CMD} -e 's|bin/bash|bin/sh|' ${WRKSRC}/configure

post-stage:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/lib/R/library/RcppArmadillo/libs/RcppArmadillo.so

.include <bsd.port.mk>
