# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/graphics/py-blockdiag/Makefile 327733 2013-09-20 18:35:44Z bapt $

PORTNAME=	blockdiag
PORTVERSION=	1.3.2
CATEGORIES=	graphics python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Simple block-diagram image generator

LICENSE=	APACHE20

RUN_DEPENDS=	${PKGNAMEPREFIX}pillow>=2.2.1:${PORTSDIR}/graphics/py-pillow \
		${PKGNAMEPREFIX}funcparserlib>=0.3.6:${PORTSDIR}/devel/py-funcparserlib \
		${PKGNAMEPREFIX}webcolors>=0:${PORTSDIR}/graphics/py-webcolors

UNIQUENAME=	py-${PORTNAME}

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_AUTOPLIST=	yes

MAN1=	${PORTNAME}.1

DOCSDIR=	${PREFIX}/share/doc/${PKGNAMEPREFIX}${PORTNAME}
EXAMPLESDIR=	${PREFIX}/share/examples/${PKGNAMEPREFIX}${PORTNAME}

PORTDOCS=	README.rst
PORTEXAMPLES=	*

OPTIONS_DEFINE=	IPAFONT PDF
IPAFONT_DESC=	Use IPA Font as default
PDF_DESC=	Enable PDF output

OPTIONS_DEFAULT=	PDF

.include <bsd.port.pre.mk>

.if ${PYTHON_VER} == 3.1
IGNORE=	does not support in ${PYTHON_VERSION}
.endif

.if ${PORT_OPTIONS:MPDF}
RUN_DEPENDS+=	${PKGNAMEPREFIX}reportlab2>0:${PORTSDIR}/print/py-reportlab2
.endif

.if ${PORT_OPTIONS:MIPAFONT}
RUN_DEPENDS+=	${LOCALBASE}/share/font-ipa/ipag.otf:${PORTSDIR}/japanese/font-ipa
.endif

post-patch:
	${REINPLACE_CMD} 's|%%LOCALBASE%%|${LOCALBASE}|' ${WRKSRC}/src/blockdiag/utils/bootstrap.py

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	@${INSTALL_DATA} ${INSTALL_WRKSRC}/${PORTDOCS} ${STAGEDIR}${DOCSDIR}
.endif
.if ${PORT_OPTIONS:MEXAMPLES}
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	@${INSTALL_DATA} ${INSTALL_WRKSRC}/examples/${PORTEXAMPLES} ${STAGEDIR}${EXAMPLESDIR}
.endif
	@${INSTALL_MAN} ${WRKSRC}/${MAN1} ${STAGEDIR}${MAN1PREFIX}/man/man1/

.include <bsd.port.post.mk>
