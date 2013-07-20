# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD$

PORTNAME=	screenfetch
PORTVERSION=	3.0.5
CATEGORIES=	sysutils

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Bash Screenshot Information Tool

LICENSE=	GPLv3

RUN_DEPENDS=	bash:${PORTSDIR}/shells/bash

USE_GITHUB=	yes
GH_ACCOUNT=	KittyKatt
GH_PROJECT=	screenFetch
GH_TAGNAME=	v${PORTVERSION}
GH_COMMIT=	47333c6

PORTDOCS=	CHANGELOG README.mkdn TODO
NO_BUILD=	yes
PLIST_FILES=	bin/${PORTNAME}

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

post-patch:
	@${MV} ${WRKSRC}/${PORTNAME}-dev ${WRKSRC}/${PORTNAME}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
.if ${PORT_OPTIONS:MDOCS}
	@${INSTALL} -d ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
