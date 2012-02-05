# New ports collection makefile for:	Ruby/GTK2
# Date created:		19 April 1999
# Whom:			Yasuhiro Fukuma <yasuf@big.or.jp>
#
# $FreeBSD: ports/x11-toolkits/ruby-gtk2/Makefile,v 1.58 2011/12/05 22:54:10 swills Exp $
#   $MCom: ports/x11-toolkits/ruby-gtk2/Makefile,v 1.5 2007/10/05 05:06:39 mezz Exp $
#

PORTNAME=	gtk2
PORTVERSION=	${RUBY_GNOME_PORTVERSION}
CATEGORIES=	x11-toolkits ruby
MASTER_SITES=	${RUBY_GNOME_MASTER_SITES}
MASTER_SITE_SUBDIR=	${RUBY_GNOME_MASTER_SITE_SUBDIR}
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
DISTNAME=	${RUBY_GNOME_DISTNAME}
DIST_SUBDIR=	${RUBY_GNOME_DIST_SUBDIR}

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ruby binding for GTK+2

LICENSE=	LGPL21
LICENSE_FILE=	${WRKSRC}/COPYING.LIB

BUILD_DEPENDS=	${RUBY_SITEARCHLIBDIR:S/${PREFIX}/${LOCALBASE}/}/pango.so:${PORTSDIR}/x11-toolkits/ruby-pango \
		rubygem-pkg-config>=1.0.7:${PORTSDIR}/devel/rubygem-pkg-config
RUN_DEPENDS=	${RUBY_SITEARCHLIBDIR:S/${PREFIX}/${LOCALBASE}/}/atk.so:${PORTSDIR}/accessibility/ruby-atk \
		${RUBY_SITEARCHLIBDIR:S/${PREFIX}/${LOCALBASE}/}/gdk_pixbuf2.so:${PORTSDIR}/graphics/ruby-gdk_pixbuf2 \
		${RUBY_SITEARCHLIBDIR:S/${PREFIX}/${LOCALBASE}/}/pango.so:${PORTSDIR}/x11-toolkits/ruby-pango

USE_RUBY=	yes
USE_GNOME=	gtk20
USE_RUBY_EXTCONF=	yes
CONFIGURE_ARGS=	--with-pkg-config-dir=${LOCALBASE}/libdata/pkgconfig

.include "${.CURDIR}/../../x11/ruby-gnome2/Makefile.common"

WRKSRC=		${RUBY_GNOME_WRKSRC}/gtk2
INSTALL_TARGET=	site-install install

PORTDOCS=	README
PORTEXAMPLES=	*
DOCSDIR=	${RUBY_MODDOCDIR}
EXAMPLESDIR=	${RUBY_MODEXAMPLESDIR}

post-patch:
	@${REINPLACE_CMD} -e 's|/usr/share|${LOCALBASE}/share|g' \
		${WRKSRC}/sample/gtk-demo/common.rb
	@${REINPLACE_CMD} -e 's|local/bin/ruby|bin/env ruby|g' \
		${WRKSRC}/sample/misc/button2.rb
	@${REINPLACE_CMD} -e 's|/usr/local/share|${LOCALBASE}/share|g' \
			${WRKSRC}/sample/testgtk/testgtk*
	@${FIND} ${WRKSRC} -name '*.bak' -delete

# Have to do that to generate ruby-glib's glib-enum-types.h or
# it will not build.
pre-configure:
	@(cd ${RUBY_GNOME_WRKSRC}/glib2 ; ${SETENV} ${CONFIGURE_ENV} \
		${RUBY} ${RUBY_FLAGS} ${RUBY_EXTCONF} ${CONFIGURE_ARGS})

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/${PORTDOCS} ${DOCSDIR}/
.endif
.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}/gtk-demo
	@${MKDIR} ${EXAMPLESDIR}/misc
	@${MKDIR} ${EXAMPLESDIR}/testgtk
	@${INSTALL_DATA} ${WRKSRC}/sample/gtk-demo/* ${EXAMPLESDIR}/gtk-demo/
	@${INSTALL_DATA} ${WRKSRC}/sample/misc/* ${EXAMPLESDIR}/misc/
	@${INSTALL_DATA} ${WRKSRC}/sample/testgtk/* ${EXAMPLESDIR}/testgtk/
.endif

.include <bsd.port.mk>
