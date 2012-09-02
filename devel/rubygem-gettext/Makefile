# New ports collection makefile for:	Ruby GetText
# Date created:		4 February 2002
# Whom:			Akinori MUSHA aka knu <knu@idaemons.org>
#
# $FreeBSD: head/devel/rubygem-gettext/Makefile 302855 2012-08-21 11:18:52Z knu $
#

PORTNAME=	gettext
PORTVERSION=	2.3.0
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	knu@FreeBSD.org
COMMENT=	A Ruby implementation of the gettext library

RUN_DEPENDS=	rubygem-locale>=2.0.5:${PORTSDIR}/devel/rubygem-locale

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes
PLIST_FILES=	bin/rgettext bin/rmsgfmt bin/rmsgmerge

.include <bsd.port.mk>
