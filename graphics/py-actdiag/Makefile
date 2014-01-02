# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD$

PORTNAME=	actdiag
PORTVERSION=	0.5.1
CATEGORIES=	graphics python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Simple activity-diagram image generator

LICENSE=	APACHE20

RUN_DEPENDS=	${PKGNAMEPREFIX}pillow>=2.2.1:${PORTSDIR}/graphics/py-pillow \
		${PKGNAMEPREFIX}blockdiag>=1.3.1:${PORTSDIR}/graphics/py-blockdiag \
		${PKGNAMEPREFIX}funcparserlib>=0.3.6:${PORTSDIR}/devel/py-funcparserlib

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_AUTOPLIST=	yes

MAN1=	${PORTNAME}.1

DOCSDIR=	${PREFIX}/share/doc/${UNIQUENAME}
PORTDOCS=	README.rst

.include <bsd.port.pre.mk>

.if ${PYTHON_VER} == 3.1
IGNORE=	does not support in ${PYTHON_VERSION}
.endif

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	@${INSTALL_DATA} ${INSTALL_WRKSRC}/${PORTDOCS} ${STAGEDIR}${DOCSDIR}
.endif
	@${INSTALL_MAN} ${WRKSRC}/${MAN1} ${STAGEDIR}${MAN1PREFIX}/man/man1/

.include <bsd.port.post.mk>
