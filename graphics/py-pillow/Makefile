# Created by: Kubilay Kocak <koobs@FreeBSD.org>
# $FreeBSD$

PORTNAME=	pillow
PORTVERSION=	2.3.0
CATEGORIES=	graphics python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	${PYDISTUTILS_PKGNAME}-${PORTVERSION}

MAINTAINER=	koobs@FreeBSD.org
COMMENT=	Fork of the Python Imaging Library (PIL)

LICENSE=	PIL
LICENSE_NAME=	Standard PIL License
LICENSE_FILE=	${WRKSRC}/docs/LICENSE
LICENSE_PERMS=	dist-mirror dist-sell pkg-mirror pkg-sell auto-accept

LIB_DEPENDS=	libjpeg.so:${PORTSDIR}/graphics/jpeg \
		libfreetype.so:${PORTSDIR}/print/freetype2

USE_GITHUB=		yes
USE_PYTHON=		yes
USE_PYDISTUTILS=	yes

GH_ACCOUNT=	python-imaging
GH_PROJECT=	${PYDISTUTILS_PKGNAME}
GH_COMMIT=	b1b88cf

CONFLICTS_INSTALL=	py*-imaging-*

PYDISTUTILS_PKGNAME=	Pillow
PYDISTUTILS_AUTOPLIST=	yes

regression-test: extract
	@cd ${WRKSRC} && \
	${PYTHON_CMD} ${PYSETUP} build_ext -i && \
	${PYTHON_CMD} selftest.py

.include <bsd.port.mk>
