# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/devel/rubygem-bugspots/Makefile 340900 2014-01-24 14:46:28Z miwi $

PORTNAME=	bugspots
PORTVERSION=	0.2.0
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Bugspots - Bug Prediction Heuristic

LICENSE=	MIT

RUN_DEPENDS=	rubygem-rainbow>=0:${PORTSDIR}/devel/rubygem-rainbow \
		rubygem-rugged>=0:${PORTSDIR}/devel/rubygem-rugged

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

PLIST_FILES=	bin/bugspots bin/git-bugspots

.include <bsd.port.mk>
