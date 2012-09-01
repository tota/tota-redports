# $FreeBSD: head/misc/rabbit/Makefile 301532 2012-07-25 20:56:28Z tota $

PORTNAME=	rabbit
PORTVERSION=	2.0.0
CATEGORIES=	misc ruby
MASTER_SITES=	http://rabbit-shockers.org/download/ \
		LOCAL
MASTER_SITE_SUBDIR=	tota/${PORTNAME}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	An RD-document-based presentation application

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

RUN_DEPENDS=	${RUBY_SITEARCHLIBDIR}/gtk2.so:${PORTSDIR}/x11-toolkits/ruby-gtk2 \
		${RUBY_SITEARCHLIBDIR}/rsvg2.so:${PORTSDIR}/graphics/ruby-rsvg2 \
		${RUBY_SITEARCHLIBDIR}/poppler.so:${PORTSDIR}/x11-toolkits/ruby-poppler \
		${RUBY_SITEARCHLIBDIR}/gio2.so:${PORTSDIR}/devel/ruby-gio2 \
		hikidoc:${PORTSDIR}/textproc/ruby-hikidoc \
		rubygem-nokogiri>0:${PORTSDIR}/textproc/rubygem-nokogiri \
		rubygem-sinatra>0:${PORTSDIR}/www/rubygem-sinatra \
		rubygem-haml>0:${PORTSDIR}/www/rubygem-haml \
		rd2:${PORTSDIR}/textproc/ruby-rdtool \
		rubygem-coderay>=1.0.0:${PORTSDIR}/textproc/rubygem-coderay \
		rubygem-kramdown>0:${PORTSDIR}/textproc/rubygem-kramdown \
		rubygem-gettext>0:${PORTSDIR}/devel/rubygem-gettext \
		${RUBY_SITELIBDIR}/rt/rtparser.rb:${PORTSDIR}/textproc/ruby-rttool

USE_GETTEXT=	run
USE_RUBY=	yes
NO_BUILD=	yes

RUBY_SHEBANG_FILES=	bin/rabbirc \
			bin/rabbit \
			bin/rabbit-command \
			bin/rabbit-slide \
			bin/rabbit-theme \
			bin/rabbit-theme-manager

PORTDOCS=	*
PORTEXAMPLES=	*
PORTDATA=	*

REINPLACE_ARGS=	-i ''

OPTIONS_DEFINE=	MIMETEX
MIMETEX_DESC=	Run with mimetex

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MMIMETEX}
RUN_DEPENDS+=	${LOCALBASE}/www/mimetex/cgi-bin/mimetex.cgi:${PORTSDIR}/www/mimetex
.endif

post-patch:
	${RUBY} -i -pe 'sub %r|(require "hikidoc")|, %Q|require "rubygems"\n\\1|' ${WRKSRC}/lib/rabbit/parser/wiki.rb
	${RUBY} -i -pe "sub %r|(require 'coderay')|, %Q|require 'rubygems'\n\\\1|" ${WRKSRC}/lib/rabbit/parser/ext/coderay.rb
.if ${PORT_OPTIONS:MMIMETEX}
	${REINPLACE_CMD} -e 's|"mimetex.cgi"|"${PREFIX}/www/mimetex/cgi-bin/mimetex.cgi"|' \
		${WRKSRC}/lib/rabbit/parser/ext/tex.rb
.endif

do-install:
	@cd ${INSTALL_WRKSRC} && ${INSTALL_SCRIPT} ${RUBY_SHEBANG_FILES} ${PREFIX}/bin
	@cd ${INSTALL_WRKSRC}/lib && ${COPYTREE_SHARE} rabbit ${RUBY_SITELIBDIR}
.if !defined(WITHOUT_NLS)
.for l in fr en ja
	@${MKDIR} ${PREFIX}/share/locale/${l}/LC_MESSAGES
	@${INSTALL_DATA} ${INSTALL_WRKSRC}/data/locale/${l}/LC_MESSAGES/${PORTNAME}.mo \
		${PREFIX}/share/locale/${l}/LC_MESSAGES
.endfor
.endif

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
	@cd ${WRKSRC}/doc && ${COPYTREE_SHARE} . ${DOCSDIR}
.endif
.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
	@cd ${WRKSRC}/sample && ${COPYTREE_SHARE} . ${EXAMPLESDIR}
.endif
.if !defined(NOPORTDATA)
	@${MKDIR} ${DATADIR}
	@cd ${INSTALL_WRKSRC}/data/rabbit && ${COPYTREE_SHARE} . ${DATADIR}
.endif

# This target is only meant to be used by the port maintainer.
x-generate-plist:
	${CP} /dev/null pkg-plist.new
.for f in ${RUBY_SHEBANG_FILES}
	${ECHO} ${f} >> pkg-plist.new
.endfor
	${FIND} ${RUBY_SITELIBDIR}/rabbit -type f | ${SORT} | ${SED} -e 's,${RUBY_SITELIBDIR},%%RUBY_SITELIBDIR%%,' >> pkg-plist.new
	${FIND} ${PREFIX}/share/locale -type f -name rabbit.mo | ${SORT} | ${SED} -e 's,^${PREFIX}/,%%NLS%%,' >> pkg-plist.new
	${FIND} ${RUBY_SITELIBDIR}/rabbit -type d -depth | ${SORT} -r | ${SED} -e 's,${RUBY_SITELIBDIR},@dirrm %%RUBY_SITELIBDIR%%,' >> pkg-plist.new

.include <bsd.port.mk>
