# New ports collection makefile for:	ja-bugzilla
# Date created:		2004-01-19
# Whom:			TAKATSU Tomonari <tota@rtfm.jp>
#
# $FreeBSD: ports/japanese/bugzilla/Makefile,v 1.21 2012/01/05 17:33:16 tota Exp $
#

PORTNAME=	bugzilla
PORTVERSION=	4.0.4
CATEGORIES=	japanese
MASTER_SITES=	http://bug-ja.org/releases/4.0/ \
		LOCAL
MASTER_SITE_SUBDIR=	tota/bugzilla-ja
PKGNAMESUFFIX=	-ja
DISTNAME=	Bugzilla-ja-${PORTVERSION}-template-rel01

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Japanese localization for Bugzilla

RUN_DEPENDS=	bugzilla>=${PORTVERSION}:${PORTSDIR}/devel/bugzilla

.include "${.CURDIR}/../../devel/bugzilla/Makefile.common"

USE_BZIP2=	yes

LANGDIR=	${WWWDIR}/template/ja

do-install:
	@-${MKDIR} ${LANGDIR}/default
	@cd ${WRKDIR}/default; ${COPYTREE_SHARE} . ${LANGDIR}/default
.if !defined(BATCH)
	@${ECHO_MSG}
	@${CAT} ${PKGMESSAGE}
	@${ECHO_MSG}
.endif

.include <bsd.port.mk>
