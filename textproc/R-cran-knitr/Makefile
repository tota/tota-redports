# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD$

PORTNAME=	knitr
PORTVERSION=	1.1
CATEGORIES=	textproc
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	General-purpose package for dynamic report generation in R

RUN_DEPENDS=	R-cran-evaluate>=0.4.3:${PORTSDIR}/devel/R-cran-evaluate \
		R-cran-digest>0:${PORTSDIR}/security/R-cran-digest \
		R-cran-formatR>=0.3.4:${PORTSDIR}/textproc/R-cran-formatR \
		R-cran-markdown>=0.4:${PORTSDIR}/textproc/R-cran-markdown \
		R-cran-stringr>=0.6:${PORTSDIR}/textproc/R-cran-stringr

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
