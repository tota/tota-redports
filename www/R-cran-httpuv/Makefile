# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/www/R-cran-httpuv/Makefile 331644 2013-10-26 00:52:33Z gerald $

PORTNAME=	httpuv
PORTVERSION=	1.2.0
CATEGORIES=	www
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	HTTP and WebSocket server library for R

LICENSE=	GPLv3 NODE
LICENSE_COMB=	multi
LICENSE_NAME_NODE=	Node's license
LICENSE_FILE_NODE=	${WRKSRC}/LICENSE
LICENSE_PERMS_NODE=	auto-accept

RUN_DEPENDS=	R-cran-Rcpp>=0.10.2:${PORTSDIR}/devel/R-cran-Rcpp

USE_GMAKE=	yes
USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

MAKE_ENV=	MAKE=${GMAKE}

NO_STAGE=	yes
.include <bsd.port.mk>
