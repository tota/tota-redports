# New ports collection makefile for:	rubygem-jpmobile
# Date created:		2008-02-06
# Whom:			TAKATSU Tomonari <tota@rtfm.jp>
#
# $FreeBSD: ports/japanese/rubygem-jpmobile/Makefile,v 1.22 2011/11/18 03:03:48 tota Exp $
#

PORTNAME=	jpmobile
PORTVERSION=	2.0.5
CATEGORIES=	japanese www rubygems
MASTER_SITES=	RG

MAINTAINER=	tota@FreeBSD.org
COMMENT=	A Rails plugin for Japanese mobile-phones

LICENSE=	MIT

RUN_DEPENDS=	rubygem-rails>=3.1.0:${PORTSDIR}/www/rubygem-rails

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

OPTIONS=	GEOKIT		"Run with geokit" Off \
		IPADDRESSES	"IP address validation support"	On \
		TERMINFO	"terminal information support"	On

.include <bsd.port.pre.mk>

PKGNAMEPREFIX:=	${PKGNAMEPREFIX}rubygem-

.if !defined(WITHOUT_GEOKIT)
RUN_DEPENDS+=	rubygem-geokit>=1.5.0:${PORTSDIR}/graphics/rubygem-geokit
.endif

.if defined(WITH_IPADDRESSES)
RUN_DEPENDS+=	ja-rubygem-jpmobile-ipaddresses>=0.0.1:${PORTSDIR}/japanese/rubygem-jpmobile-ipaddresses
.endif

.if defined(WITH_TERMINFO)
RUN_DEPENDS+=	ja-rubygem-jpmobile-terminfo>=0.0.2:${PORTSDIR}/japanese/rubygem-jpmobile-terminfo
.endif

.include <bsd.port.post.mk>