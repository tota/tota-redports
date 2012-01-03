# New ports collection makefile for:	ilohamail
# Date created:		2004-01-20
# Whom:			TAKATSU Tomonari <tota@rtfm.jp>
#
# $FreeBSD: ports/mail/ilohamail/Makefile,v 1.5 2010/02/09 14:58:53 tota Exp $
#

PORTNAME=	ilohamail
PORTVERSION=	0.8.13
PORTREVISION=	2
CATEGORIES=	mail www
MASTER_SITES=	SF/${PORTNAME}/IlohaMail-stable/${PORTVERSION}
DISTNAME=	IlohaMail-${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	IlohaMail is a lightweight multilingual webmail program

NO_BUILD=	yes
USE_PHP=	pcre
WANT_PHP_WEB=	yes

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

SUB_FILES=	pkg-message

OPTIONS=	MYSQL "Use MySQL-backend" on

.include <bsd.port.options.mk>

.if !defined(WITHOUT_MYSQL)
USE_PHP+=	mysql
PLIST_SUB+=	MYSQL=""
.else
PLIST_SUB+=	MYSQL="@comment "
.endif

do-install:
	@${MKDIR} ${WWWDIR}
	${CP} -Rp ${WRKSRC}/IlohaMail/ ${WWWDIR}
	${CHOWN} -R ${WWWOWN}:${WWWGRP} ${WWWDIR}/data
.if !defined(WITHOUT_MYSQL)
	@${MKDIR} ${DATADIR}
	${CP} -Rp ${WRKSRC}/MySQL ${DATADIR}
.endif
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	cd ${WRKSRC}; ${CP} -Rp INSTALL README RELEASE_NOTES \
		THEMES TODO UPGRADING Manual ${DOCSDIR}
.endif

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
