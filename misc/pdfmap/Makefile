# Created by: ijliao
# $FreeBSD: head/misc/pdfmap/Makefile 345421 2014-02-21 13:38:12Z ehaupt $

PORTNAME=	pdfmap
PORTVERSION=	2.00
PORTREVISION=	4
CATEGORIES=	misc
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Generate maps in PDF format and place clickable objects on them

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}jaxml>=3.01:${PORTSDIR}/textproc/py-jaxml \
		${PYTHON_SITELIBDIR}/PIL/Image.py:${PORTSDIR}/graphics/py-imaging
BUILD_DEPENDS=	${PYTHON_SITELIBDIR}/reportlab/pdfgen/canvas.py:${PORTSDIR}/print/py-reportlab1 \
		${PYTHON_SITELIBDIR}/PIL/Image.py:${PORTSDIR}/graphics/py-imaging

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes

DOCS=		CREDITS NEWS README TODO doc/*.html

NO_STAGE=	yes

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCS}
PORTDOCS=	*
.endif

.if ${PORT_OPTIONS:MDOCS}
post-install:
	@${MKDIR} ${DOCSDIR}
	@cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
