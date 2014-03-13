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
USES=	shebangfix
RUBYGEM_AUTOPLIST=	yes
PLIST_FILES=	bin/rmsgfmt bin/rmsginit bin/rmsgmerge bin/rxgettext
SHEBANG_FILES=	samples/cgi/hellolib.rb \
		samples/cgi/http.rb \
		samples/hello.rb \
		samples/hello2.rb \
		samples/hello_glade2.rb \
		samples/hello_gtk2.rb \
		samples/hello_gtk_builder.rb \
		samples/hello_noop.rb \
		samples/hello_plural.rb \
		samples/hello_tk.rb

.include <bsd.port.mk>
