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
		R-cran-knitr>=0.7:${PORTSDIR}/textproc/R-cran-knitr \
		R-cran-ggplot2>0:${PORTSDIR}/graphics/R-cran-ggplot2 \
		R-cran-scales>0:${PORTSDIR}/graphics/R-cran-scales \
		R-cran-xtable>0:${PORTSDIR}/textproc/R-cran-xtable \
		R-cran-reshape2>0:${PORTSDIR}/devel/R-cran-reshape2

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
