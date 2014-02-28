# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/devel/R-cran-plyr/Makefile 337846 2013-12-28 10:28:40Z dbn $

PORTNAME=	plyr
PORTVERSION=	1.8.1
CATEGORIES=	devel
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Tools for splitting, applying, and combining data

LICENSE=	MIT HW
LICENSE_COMB=	multi
LICENSE_NAME_HW=	Hadley Wickham COPYRIGHT
LICENSE_FILE_HW=	${WRKSRC}/LICENSE
LICENSE_PERMS_HW=	dist-mirror dist-sell pkg-mirror pkg-sell auto-accept

RUN_DEPENDS=	R-cran-Rcpp>=0.11.0:${PORTSDIR}/devel/R-cran-Rcpp \
		R-cran-itertools>0:${PORTSDIR}/devel/R-cran-itertools \
		R-cran-iterators>0:${PORTSDIR}/devel/R-cran-iterators

USES=	cran:auto-plist

.include <bsd.port.mk>
