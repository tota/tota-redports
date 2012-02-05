# New ports collection makefile for:	Ruby/ATK
# Date created:				05 April 2004
# Whom:					Mezz <mezz7@cox.net>
#
# $FreeBSD: ports/accessibility/ruby-atk/Makefile,v 1.17 2011/12/05 22:54:09 swills Exp $
#   $MCom: ports/accessibility/ruby-atk/Makefile,v 1.2 2005/10/17 07:05:39 mezz Exp $
#

PORTNAME=	atk
PORTVERSION=	${RUBY_GNOME_PORTVERSION}
CATEGORIES=	accessibility devel ruby
MASTER_SITES=	${RUBY_GNOME_MASTER_SITES}
MASTER_SITE_SUBDIR=	${RUBY_GNOME_MASTER_SITE_SUBDIR}
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
DISTNAME=	${RUBY_GNOME_DISTNAME}
DIST_SUBDIR=	${RUBY_GNOME_DIST_SUBDIR}

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ruby binding for ATK

BUILD_DEPENDS+= rubygem-pkg-config>=1.0.7:${PORTSDIR}/devel/rubygem-pkg-config
RUN_DEPENDS=	${RUBY_SITEARCHLIBDIR:S/${PREFIX}/${LOCALBASE}/}/glib2.so:${PORTSDIR}/devel/ruby-glib2 \
		rubygem-pkg-config>=1.0.7:${PORTSDIR}/devel/rubygem-pkg-config

LICENSE=	LGPL21
LICENSE_FILE=	${WRKSRC}/COPYING.LIB

USE_RUBY=	yes
USE_GNOME=	atk
USE_RUBY_EXTCONF=	yes
CONFIGURE_ARGS=	--with-pkg-config-dir=${LOCALBASE}/libdata/pkgconfig

.include "${.CURDIR}/../../x11/ruby-gnome2/Makefile.common"

WRKSRC=		${RUBY_GNOME_WRKSRC}/atk
INSTALL_TARGET=	site-install install

PORTDOCS=	README
DOCSDIR=	${RUBY_MODDOCDIR}

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/${PORTDOCS} ${DOCSDIR}/
.endif

.include <bsd.port.mk>
