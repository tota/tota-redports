# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/math/R-cran-RcppArmadillo/Makefile 327746 2013-09-20 20:55:04Z bapt $

PORTNAME=	RcppArmadillo
PORTVERSION=	0.3.910.0
CATEGORIES=	math
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Rcpp integration for Armadillo templated linear algebra library

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

RUN_DEPENDS=	R-cran-Rcpp>=0.10.2:${PORTSDIR}/devel/R-cran-Rcpp

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

NO_STAGE=	yes
.include <bsd.port.mk>
