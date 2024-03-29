# Created by: TAKATSU Tomonari <tota@rtfm.jp>
# $FreeBSD: head/mail/ilohamail/Makefile 340722 2014-01-22 17:00:46Z mat $

PORTNAME=	ilohamail
PORTVERSION=	0.8.13
PORTREVISION=	1
CATEGORIES=	mail www
MASTER_SITES=	SF/${PORTNAME}/IlohaMail-stable/${PORTVERSION}
DISTNAME=	IlohaMail-${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	IlohaMail is a lightweight multilingual webmail program

NO_BUILD=	yes
USE_PHP=	pcre
WANT_PHP_WEB=	yes
DEPRECATED=	yes
EXPIRATION_DATE=	2014-08-31

.if !defined(WITHOUT_MYSQL)
USE_PHP+=	mysql
PLIST_SUB+=	MYSQL=""
.else
PLIST_SUB+=	MYSQL="@comment "
.endif

.if !defined(WITHOUT_WWWDIR)
ILOHADIR=	${PREFIX}/www/ilohamail
.else
ILOHADIR=	${PREFIX}/ilohamail
.endif

PLIST_SUB+=	ILOHADIR="${ILOHADIR:S,^${PREFIX}/,,}"
SUB_FILES=	pkg-message
SUB_LIST=	ILOHADIR=${ILOHADIR}

NO_STAGE=	yes
pre-everything::
	@${ECHO_MSG} ""
	@${ECHO_MSG} "  define WITHOUT_MYSQL: not to use MySQL back-end"
	@${ECHO_MSG} ""

do-install:
	@${MKDIR} ${ILOHADIR}
	${CP} -Rp ${WRKSRC}/IlohaMail/ ${ILOHADIR}
	${CHOWN} -R ${WWWOWN}:${WWWGRP} ${ILOHADIR}/data
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
