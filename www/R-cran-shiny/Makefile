# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/www/R-cran-shiny/Makefile 348729 2014-03-21 06:10:06Z tota $

PORTNAME=	shiny
PORTVERSION=	0.10.0
CATEGORIES=	www
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Web Application Framework for R

LICENSE=	GPLv3

RUN_DEPENDS=	R-cran-httpuv>=1.2.0:${PORTSDIR}/www/R-cran-httpuv \
		R-cran-caTools>0:${PORTSDIR}/devel/R-cran-caTools \
		R-cran-RJSONIO>0:${PORTSDIR}/converters/R-cran-RJSONIO \
		R-cran-xtable>0:${PORTSDIR}/textproc/R-cran-xtable \
		R-cran-digest>0:${PORTSDIR}/security/R-cran-digest \
		R-cran-htmltools>=0.2.4:${PORTSDIR}/textproc/R-cran-htmltools

USES=	cran:auto-plist

.include <bsd.port.mk>
