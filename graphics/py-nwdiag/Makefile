# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/graphics/py-nwdiag/Makefile 327733 2013-09-20 18:35:44Z bapt $

PORTNAME=	nwdiag
PORTVERSION=	1.0.0
CATEGORIES=	graphics python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	A simple network-diagram image generator

LICENSE=	AL2

RUN_DEPENDS=	${PKGNAMEPREFIX}pillow>=2.2.1:${PORTSDIR}/graphics/py-pillow \
		${PKGNAMEPREFIX}funcparserlib>=0.3.6:${PORTSDIR}/devel/py-funcparserlib \
		${PKGNAMEPREFIX}blockdiag>=1.3.0:${PORTSDIR}/graphics/py-blockdiag

USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install

MAN1=	${PORTNAME}.1 rackdiag.1

DOCSDIR=	${PREFIX}/share/doc/${PKGNAMEPREFIX}${PORTNAME}
EXAMPLESDIR=	${PREFIX}/share/examples/${PKGNAMEPREFIX}${PORTNAME}

PORTDOCS=	README.txt
PORTEXAMPLES=	*

NO_STAGE=	yes
.include <bsd.port.pre.mk>

.if ${PYTHON_VER} == 3.1
IGNORE=	does not support in ${PYTHON_VERSION}
.endif

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${INSTALL_WRKSRC}/src/${PORTDOCS} ${DOCSDIR}
.endif
.if ${PORT_OPTIONS:MEXAMPLES}
	@${MKDIR} ${EXAMPLESDIR}
.for d in ${PORTNAME} packetdiag
	@${INSTALL_DATA} \
		${INSTALL_WRKSRC}/examples/${d}/${PORTEXAMPLES} \
		${EXAMPLESDIR}
.endfor
.endif
.for f in ${MAN1}
	@${INSTALL_MAN} ${WRKSRC}/${f} ${MAN1PREFIX}/man/man1/
.endfor

x-generate-plist:
	${ECHO} bin/${PORTNAME} > pkg-plist.new
	${ECHO} bin/packetdiag >> pkg-plist.new
	${ECHO} bin/rackdiag >> pkg-plist.new
	${FIND} ${PYTHON_SITELIBDIR}/${PYEASYINSTALL_EGG} -type f | ${SORT} | \
	${SED} -e 's,${PYTHON_SITELIBDIR},%%PYTHON_SITELIBDIR%%,' \
		-e 's,${PYEASYINSTALL_EGG},%%PYEASYINSTALL_EGG%%,' \
		>> pkg-plist.new
	${FIND} ${PYTHON_SITELIBDIR}/${PYEASYINSTALL_EGG} -type d -depth | ${SORT} -r | \
	${SED} -e 's,${PYTHON_SITELIBDIR},@dirrm %%PYTHON_SITELIBDIR%%,' \
		-e 's,${PYEASYINSTALL_EGG},%%PYEASYINSTALL_EGG%%,' \
		>> pkg-plist.new

.include <bsd.port.post.mk>
