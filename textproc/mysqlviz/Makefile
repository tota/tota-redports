# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/textproc/mysqlviz/Makefile 327773 2013-09-20 23:17:30Z bapt $

PORTNAME=	mysqlviz
PORTVERSION=	0.3
CATEGORIES=	textproc
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	tota@FreeBSD.org
COMMENT=	MySQL and SQLite Database Visualisation Tool

LICENSE=	GPLv3

NO_BUILD=	yes
USES=	tar:bzip2
USE_PHP=	yes
WANT_PHP_CLI=	yes

PLIST_FILES=	bin/${PORTNAME}

PORTEXAMPLES=	eg.png eg.sql sqlite-eg.sql

OPTIONS_DEFINE=	EXAMPLES

post-patch:
	@${REINPLACE_CMD} \
		-e 's|/usr/bin/php|${LOCALBASE}/bin/php|' \
		${WRKSRC}/${PORTNAME}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${PORTEXAMPLES} ${STAGEDIR}${EXAMPLESDIR}

.include <bsd.port.mk>
