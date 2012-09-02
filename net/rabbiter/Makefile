# $FreeBSD$

PORTNAME=	rabbiter
PORTVERSION=	2.0.0
CATEGORIES=	net ruby

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Rabbiter is a twitter client for Rabbit

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

RUN_DEPENDS=	${RUBY_SITEARCHLIBDIR}/gio2.so:${PORTSDIR}/devel/ruby-gio2 \
		rabbit>=2.0.0:${PORTSDIR}/misc/rabbit \
		rubygem-twitter_oauth>=0:${PORTSDIR}/security/rubygem-twitter_oauth \
		rubygem-twitter-stream>=0.1.16:${PORTSDIR}/net/rubygem-twitter-stream

USE_GETTEXT=	yes
USE_RUBY=	yes
USE_GITHUB=	yes
GH_ACCOUNT=	shockers
GH_COMMIT=	f870369

RUBY_SHEBANG_FILES=	bin/rabbiter

PORTDOCS=	*

do-build:
	@${LOCALBASE}/bin/msgfmt ${BUILD_WRKSRC}/po/ja/rabbiter.po -o ${BUILD_WRKSRC}/po/ja/rabbiter.mo
	@${RUBY} -S rmsgfmt ${BUILD_WRKSRC}/po/ja/rabbiter.po -o ${BUILD_WRKSRC}/po/ja/rabbiter.mo

do-install:
	@cd ${INSTALL_WRKSRC} && ${INSTALL_SCRIPT} ${RUBY_SHEBANG_FILES} ${PREFIX}/bin
	@cd ${INSTALL_WRKSRC}/lib && ${COPYTREE_SHARE} . ${RUBY_SITELIBDIR}
	@${MKDIR} ${PREFIX}/share/locale/ja/LC_MESSAGES
	@${INSTALL_DATA} ${INSTALL_WRKSRC}/po/ja/rabbiter.mo \
		${PREFIX}/share/locale/ja/LC_MESSAGES
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${INSTALL_WRKSRC}/README ${DOCSDIR}
	@cd ${INSTALL_WRKSRC}/doc && ${COPYTREE_SHARE} . ${DOCSDIR}
.endif

x-generate-plist: ${INSTALL}
	${ECHO} ${RUBY_SHEBANG_FILES} > pkg-plist.new
	${ECHO} ${RUBY_SITELIBDIR}/rabbiter.rb | ${SED} -e 's,${RUBY_SITELIBDIR},%%RUBY_SITELIBDIR%%,' >> pkg-plist.new
	${FIND} ${RUBY_SITELIBDIR}/rabbiter -type f | ${SORT} | ${SED} -e 's,${RUBY_SITELIBDIR},%%RUBY_SITELIBDIR%%,' >> pkg-plist.new
	${FIND} ${PREFIX}/share/locale -type f -name rabbiter.mo | ${SORT} | ${SED} -e 's,^${PREFIX}/,,' >> pkg-plist.new
	${FIND} ${RUBY_SITELIBDIR}/rabbiter -type d -depth | ${SORT} -r | ${SED} -e 's,${RUBY_SITELIBDIR},@dirrm %%RUBY_SITELIBDIR%%,' >> pkg-plist.new

.include <bsd.port.mk>
