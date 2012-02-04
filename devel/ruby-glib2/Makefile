# New ports collection makefile for:	Ruby/GLib2
# Date created:		24 November 2002
# Whom:			Akinori MUSHA aka knu <knu@idaemons.org>
#
# $FreeBSD: ports/devel/ruby-glib2/Makefile,v 1.29 2011/12/05 22:54:09 swills Exp $
#   $MCom: ports/devel/ruby-glib2/Makefile,v 1.5 2007/10/05 05:06:39 mezz Exp $
#

PORTNAME=	glib2
PORTVERSION=	${RUBY_GNOME_PORTVERSION}
CATEGORIES=	devel ruby
MASTER_SITES=	${RUBY_GNOME_MASTER_SITES}
MASTER_SITE_SUBDIR=	${RUBY_GNOME_MASTER_SITE_SUBDIR}
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
DISTNAME=	${RUBY_GNOME_DISTNAME}
DIST_SUBDIR=	${RUBY_GNOME_DIST_SUBDIR}

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ruby binding for GLib2

LICENSE=	LGPL21
LICENSE_FILE=	${WRKSRC}/COPYING.LIB

BUILD_DEPENDS+=	rubygem-pkg-config>=1.0.7:${PORTSDIR}/devel/rubygem-pkg-config
RUN_DEPENDS+=	${BUILD_DEPENDS}

USE_RUBY=	yes
USE_GNOME=	glib20
USE_RUBY_EXTCONF=	yes
CONFIGURE_ARGS=	--with-pkg-config-dir=${LOCALBASE}/libdata/pkgconfig

.include "${.CURDIR}/../../x11/ruby-gnome2/Makefile.common"

WRKSRC=		${RUBY_GNOME_WRKSRC}/glib2
INSTALL_TARGET=	site-install install

PORTDOCS=	README
PORTEXAMPLES=	*
DOCSDIR=	${RUBY_MODDOCDIR}
EXAMPLESDIR=	${RUBY_MODEXAMPLESDIR}

post-patch:
	@${RM} ${WRKSRC}/lib/gnome2-win32-binary-downloader.rb

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/${PORTDOCS} ${DOCSDIR}/
.endif
.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
	@${INSTALL_DATA} ${WRKSRC}/sample/${PORTEXAMPLES} ${EXAMPLESDIR}/
.endif

.include <bsd.port.mk>
