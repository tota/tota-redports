# Created by: Akinori MUSHA aka knu <knu@idaemons.org>
# $FreeBSD$

PORTNAME=	gettext
PORTVERSION=	3.1.2
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	knu@FreeBSD.org
COMMENT=	Ruby implementation of the gettext library

LICENSE=	RUBY LGPL3
LICENSE_COMB=	dual
LICENSE_FILE=	${WRKSRC}/doc/text/gpl-2.0.txt \
		${WRKSRC}/doc/text/lgpl-3.0.txt \
		${WRKSRC}/doc/text/ruby-license.txt

RUN_DEPENDS=	rubygem-locale>=2.0.5:${PORTSDIR}/devel/rubygem-locale \
		rubygem-text>0:${PORTSDIR}/textproc/rubygem-text

USE_RUBY=	yes
USE_RUBYGEMS=	yes
USES=	shebangfix
RUBYGEM_AUTOPLIST=	yes
BIN_FILES=	bin/rmsgcat bin/rmsgfmt bin/rmsginit \
		bin/rmsgmerge bin/rxgettext
PLIST_FILES=	${BIN_FILES}
SHEBANG_FILES=	${BIN_FILES} \
		samples/cgi/cookie.cgi \
		samples/cgi/helloerb1.cgi \
		samples/cgi/helloerb2.cgi \
		samples/cgi/hellolib.rb \
		samples/cgi/http.rb \
		samples/cgi/index.cgi \
		samples/hello.rb \
		samples/hello2.rb \
		samples/hello_glade2.rb \
		samples/hello_gtk2.rb \
		samples/hello_gtk_builder.rb \
		samples/hello_noop.rb \
		samples/hello_plural.rb \
		samples/hello_tk.rb \
		test/run-test.rb

.include <bsd.port.mk>
