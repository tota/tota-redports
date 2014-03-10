# Created by: Akinori MUSHA aka knu <knu@idaemons.org>
# $FreeBSD$

PORTNAME=	gettext
PORTVERSION=	3.1.1
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	knu@FreeBSD.org
COMMENT=	A Ruby implementation of the gettext library

LICENSE=	RUBY LGPL3
LICENSE_COMB=	dual

RUN_DEPENDS=	rubygem-locale>=2.0.5:${PORTSDIR}/devel/rubygem-locale \
		rubygem-text>0:${PORTSDIR}/textproc/rubygem-text

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes
PLIST_FILES=	bin/rmsgfmt bin/rmsginit bin/rmsgmerge bin/rxgettext

.include <bsd.port.mk>
