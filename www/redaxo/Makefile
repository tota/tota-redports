# Created by: Marco Steinbach <coco@executive-computing.de>
# $FreeBSD$

PORTNAME=	redaxo
PORTVERSION=	4.4.1
CATEGORIES=	www
MASTER_SITES=	http://www.redaxo.org/files/
DISTNAME=	${PORTNAME}${PORTVERSION:S/./_/g}

MAINTAINER=	coco@executive-computing.de
COMMENT=	REDAXO Open Source Content Management System

LICENSE=	GPLv2

USE_PHP=	gd mysql session xml zlib
USE_ZIP=	yes

NO_BUILD=	yes
SUB_FILES=	pkg-message pkg-deinstall

OPTIONS_DEFINE=	APACHE MYSQLS

MYSQLS_DESC=	Use MySQL database server

OPTIONS_DEFAULT=	APACHE MYSQLS

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MMYSQLS}
USE_MYSQL=	server
.endif

.if ${PORT_OPTIONS:MAPACHE}
USE_APACHE_RUN=	22+
.endif

do-install:
	cd ${WRKDIR}/${DISTNAME} && \
	${FIND} . | \
	${CPIO} --quiet -pdm -R ${WWWOWN}:${WWWGRP} ${WWWDIR}

post-install:
	${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
