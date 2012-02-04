# New ports collection makefile for:	Ruby/GdkPixbuf2
# Date created:		28 February 2001
# Whom:			Akinori MUSHA aka knu <knu@idaemons.org>
#
# $FreeBSD: ports/graphics/ruby-gdk_pixbuf2/Makefile,v 1.42 2011/12/05 22:54:09 swills Exp $
#   $MCom: ports/graphics/ruby-gdk_pixbuf2/Makefile,v 1.2 2005/10/17 07:05:40 mezz Exp $
#

PORTNAME=	gdk_pixbuf2
PORTVERSION=	${RUBY_GNOME_PORTVERSION}
CATEGORIES=	graphics ruby gnome
MASTER_SITES=	${RUBY_GNOME_MASTER_SITES}
MASTER_SITE_SUBDIR=	${RUBY_GNOME_MASTER_SITE_SUBDIR}
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
DISTNAME=	${RUBY_GNOME_DISTNAME}
DIST_SUBDIR=	${RUBY_GNOME_DIST_SUBDIR}

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ruby binding for GdkPixbuf2

LICENSE=	LGPL21
LICENSE_FILE=	${WRKSRC}/COPYING.LIB

BUILD_DEPENDS+=	rubygem-pkg-config>=1.0.7:${PORTSDIR}/devel/rubygem-pkg-config
RUN_DEPENDS=	${RUBY_SITEARCHLIBDIR:S/${PREFIX}/${LOCALBASE}/}/glib2.so:${PORTSDIR}/devel/ruby-glib2 \
		rubygem-pkg-config>=1.0.7:${PORTSDIR}/devel/rubygem-pkg-config

USE_RUBY=	yes
USE_GNOME=	gtk20
USE_RUBY_EXTCONF=	yes
CONFIGURE_ARGS=	--with-pkg-config-dir=${LOCALBASE}/libdata/pkgconfig

.include "${.CURDIR}/../../x11/ruby-gnome2/Makefile.common"

WRKSRC=		${RUBY_GNOME_WRKSRC}/gdk_pixbuf2
INSTALL_TARGET=	site-install install

PORTDOCS=	README
PORTEXAMPLES=	*
DOCSDIR=	${RUBY_MODDOCDIR}
EXAMPLESDIR=	${RUBY_MODEXAMPLESDIR}

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${RUBY_MODDOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/${PORTDOCS} ${DOCSDIR}/
.endif
.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
	@${INSTALL_DATA} ${WRKSRC}/sample/${PORTEXAMPLES} ${EXAMPLESDIR}/
.endif

.include <bsd.port.mk>
