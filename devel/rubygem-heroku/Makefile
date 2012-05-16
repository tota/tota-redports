# New ports collection makefile for:	rubygem-heroku
# Date created:		2012-05-16
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD$
#

PORTNAME=	heroku
PORTVERSION=	2.25.0
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Tools to deploy and manage apps on Heroku

LICENSE=	MIT

RUN_DEPENDS=	rubygem-netrc>=0.7.1:${PORTSDIR}/net/rubygem-netrc \
		rubygem-rest-client>=1.6.1:${PORTSDIR}/www/rubygem-rest-client \
		rubygem-launchy>=0.3.2:${PORTSDIR}/devel/rubygem-launchy \
		rubygem-rubyzip>=0:${PORTSDIR}/archivers/rubygem-rubyzip

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

PLIST_FILES=	bin/heroku

.include <bsd.port.mk>
