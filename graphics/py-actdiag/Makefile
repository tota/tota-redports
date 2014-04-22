# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD$

PORTNAME=	actdiag
PORTVERSION=	0.4.3
CATEGORIES=	graphics python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Simple activity-diagram image generator

LICENSE=	APACHE20

RUN_DEPENDS=	${PKGNAMEPREFIX}imaging>=1.1.5:${PORTSDIR}/graphics/py-imaging \
		${PKGNAMEPREFIX}blockdiag>=1.2.4:${PORTSDIR}/graphics/py-blockdiag \
		${PKGNAMEPREFIX}funcparserlib>=0.3.4:${PORTSDIR}/devel/py-funcparserlib

USE_PYTHON=	2
USE_PYDISTUTILS=	yes
PYDISTUTILS_AUTOPLIST=	yes

DOCSDIR=	${PREFIX}/share/doc/${UNIQUENAME}
PORTDOCS=	README.txt

OPTIONS_DEFINE=	DOCS

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${INSTALL_WRKSRC}/src/${PORTDOCS} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
