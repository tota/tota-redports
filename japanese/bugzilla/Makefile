# New ports collection makefile for:	ja-bugzilla
# Date created:		2004-01-19
# Whom:			TAKATSU Tomonari <tota@rtfm.jp>
#
# $FreeBSD: head/japanese/bugzilla/Makefile 300896 2012-07-14 13:54:48Z beat $
#

PORTNAME=	bugzilla
PORTVERSION=	4.0.6
PORTREVISION=	1
CATEGORIES=	japanese
MASTER_SITES=	http://bug-ja.org/releases/4.0/ \
		LOCAL
MASTER_SITE_SUBDIR=	tota/bugzilla-ja
DISTNAME=	Bugzilla-ja-${PORTVERSION}-template-rel01

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Japanese localization for Bugzilla

RUN_DEPENDS=	bugzilla>=${PORTVERSION}:${PORTSDIR}/devel/bugzilla

LATEST_LINK=	${PKGNAMEPREFIX}bugzilla

.include "${.CURDIR}/../../devel/bugzilla/Makefile.common"

USE_BZIP2=	yes

WRKSRC=		${WRKDIR}/default
LANGDIR=	${WWWDIR}/template/ja

post-patch:
	@${FIND} ${WRKSRC}/ -name \*.orig -delete

do-install:
	@-${MKDIR} ${LANGDIR}/default
	@cd ${WRKDIR}/default; ${COPYTREE_SHARE} . ${LANGDIR}/default
.if !defined(BATCH)
	@${ECHO_MSG}
	@${CAT} ${PKGMESSAGE}
	@${ECHO_MSG}
.endif

# Maintainer
plist: patch
	@( cd ${WRKDIR}/ && ${FIND} default -type f | ${AWK} '{print "%%WWWDIR%%/template/ja/"$$1}' | ${SORT} > ${PLIST}.new )
	@( cd ${WRKDIR}/ && ${FIND} default -type d | ${AWK} '{print "@dirrmtry %%WWWDIR%%/template/ja/"$$1}' | ${SORT} -r >> ${PLIST}.new )
	@${ECHO} "@dirrmtry %%WWWDIR%%/template/ja" >> ${PLIST}.new
	@if ${DIFF} -u ${PLIST} ${PLIST}.new ; then \
		${ECHO_MSG} no pkg-plist changes; \
		${RM} ${PLIST}.new ; \
	fi

.include <bsd.port.mk>
