# $FreeBSD$

PORTNAME=	rabbirack
PORTVERSION=	2.0.0
CATEGORIES=	www ruby

MAINTAINER=	tota@FreeBSD.org
COMMENT=	RabbiRack is a tool that controls Rabbit by Web browser

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

RUN_DEPENDS=	rubygem-haml>=0:${PORTSDIR}/www/rubygem-haml \
		rubygem-locale>=2.0.6:${PORTSDIR}/devel/rubygem-locale \
		rabbit>=2.0.0:${PORTSDIR}/misc/rabbit \
		rubygem-sinatra>=0:${PORTSDIR}/wwww/rubygem-sinatra

USE_RUBY=	yes
USE_GITHUB=	yes
GH_ACCOUNT=	shockers
GH_COMMIT=	bcba62f

RUBY_SHEBANG_FILES=	bin/rabbirack

PORTDOCS=	*

do-build:
	@${LOCALBASE}/bin/msgfmt ${BUILD_WRKSRC}/po/ja/rabbirack.po -o ${BUILD_WRKSRC}/po/ja/rabbirack.mo
	@${RUBY} -S rmsgfmt ${BUILD_WRKSRC}/po/ja/rabbirack.po -o ${BUILD_WRKSRC}/po/ja/rabbirack.mo

do-install:
	@cd ${INSTALL_WRKSRC} && ${INSTALL_SCRIPT} ${RUBY_SHEBANG_FILES} ${PREFIX}/bin
	@cd ${INSTALL_WRKSRC}/lib && ${COPYTREE_SHARE} . ${RUBY_SITELIBDIR}
	@${MKDIR} ${PREFIX}/share/locale/ja/LC_MESSAGES
	@${INSTALL_DATA} ${INSTALL_WRKSRC}/po/ja/rabbirack.mo \
		${PREFIX}/share/locale/ja/LC_MESSAGES
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${INSTALL_WRKSRC}/README ${DOCSDIR}
	@cd ${INSTALL_WRKSRC}/doc && ${COPYTREE_SHARE} . ${DOCSDIR}
.endif

x-generate-plist: ${INSTALL}
	${ECHO} ${RUBY_SHEBANG_FILES} > pkg-plist.new
	${ECHO} ${RUBY_SITELIBDIR}/rabbirack.rb | ${SED} -e 's,${RUBY_SITELIBDIR},%%RUBY_SITELIBDIR%%,' >> pkg-plist.new
	${FIND} ${RUBY_SITELIBDIR}/rabbirack -type f | ${SORT} | ${SED} -e 's,${RUBY_SITELIBDIR},%%RUBY_SITELIBDIR%%,' >> pkg-plist.new
	${FIND} ${PREFIX}/share/locale -type f -name rabbirack.mo | ${SORT} | ${SED} -e 's,^${PREFIX}/,,' >> pkg-plist.new
	${FIND} ${RUBY_SITELIBDIR}/rabbirack -type d -depth | ${SORT} -r | ${SED} -e 's,${RUBY_SITELIBDIR},@dirrm %%RUBY_SITELIBDIR%%,' >> pkg-plist.new

.include <bsd.port.mk>
