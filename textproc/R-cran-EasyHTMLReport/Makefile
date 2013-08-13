# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD$

PORTNAME=	EasyHTMLReport
PORTVERSION=	0.1.1
CATEGORIES=	textproc
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Easy to send HTML reports

LICENSE=	BSD

RUN_DEPENDS=	R-cran-base64enc>0:${PORTSDIR}/converters/R-cran-base64enc \
		R-cran-markdown>0:${PORTSDIR}/textproc/R-cran-markdown \
		R-cran-knitr>=0.7:${PORTSDIR}/textproc/R-cran-knitr

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
