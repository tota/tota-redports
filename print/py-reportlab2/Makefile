# Created by: Li-Wen Hsu <lwhsu@lwhsu.org>
# $FreeBSD$

PORTNAME=	reportlab2
PORTVERSION=	2.5
CATEGORIES=	print python
MASTER_SITES=	http://www.reportlab.com/ftp/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTFILES=	reportlab-${PORTVERSION}${EXTRACT_SUFX} pfbfer-${PFBFER_VERSION}.zip
EXTRACT_ONLY=	reportlab-${PORTVERSION}${EXTRACT_SUFX}

MAINTAINER=	buganini@gmail.com
COMMENT=	Library to create PDF documents using the Python language

LICENSE=	BSD

WRKSRC=		${WRKDIR}/reportlab-${PORTVERSION}

CONFLICTS=	py2[0-9]-reportlab-[0-9]*

PFBFER_VERSION=	20070710

USE_PYTHON=	2.5-2.7
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	reportlab

MAKE_ENV=	PACKAGE_PATH="${REPORTLABDIR}"

REPORTLABDIR=	${PYTHONPREFIX_SITELIBDIR}/reportlab
DOCSDIR=	${PREFIX}/share/doc/${PKGNAMEPREFIX}${PORTNAME}
PORTDOCS=	reportlab-graphics-reference.pdf \
		reportlab-reference.pdf \
		reportlab-userguide.pdf

OPTIONS_DEFINE=	CJK FREETYPE DOCS
OPTIONS_RADIO=	PIL
OPTIONS_RADIO_PIL=	IMAGING PILLOW
CJK_DESC=	Adobe CMaps
IMAGING_DESC=	Use Python Imaging Library (PIL)
PILLOW_DESC=	Use Pillow Python Imaging Library (Fork)

OPTIONS_DEFAULT=	CJK FREETYPE PILLOW

NO_STAGE=	yes
.include <bsd.port.pre.mk>

.if ${ARCH} == "sparc64"
BROKEN=	Does not install on sparc64
.endif

.if ${PORT_OPTIONS:MCJK}
RUN_DEPENDS+=	${LOCALBASE}/share/fonts/adobe-cmaps/ac15/cid2code.txt:${PORTSDIR}/print/adobe-cmaps
.endif

.if ${PORT_OPTIONS:MFREETYPE}
LIB_DEPENDS+=	freetype:${PORTSDIR}/print/freetype2
.endif

.if ${PORT_OPTIONS:MIMAGING}
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}imaging>0:${PORTSDIR}/graphics/py-imaging
.endif

.if ${PORT_OPTIONS:MPILLOW}
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}pillow>0:${PORTSDIR}/graphics/py-pillow
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|%%DISTDIR%%|${DISTDIR}|g' \
			  -e 's|pfbfer.zip|pfbfer-${PFBFER_VERSION}.zip|g' \
				${WRKSRC}/setup.py

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@cd ${WRKSRC}/docs && ${PYTHON_CMD} genAll.py
	${MKDIR} ${DOCSDIR}
.for i in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/docs/${i} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.post.mk>
