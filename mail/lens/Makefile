# Created by: TAKATSU Tomonari <tota@rtfm.jp>
# $FreeBSD: head/mail/lens/Makefile 340722 2014-01-22 17:00:46Z mat $

PORTNAME=	lens
PORTVERSION=	0.2
PORTREVISION=	1
CATEGORIES=	mail ruby
MASTER_SITES=	http://www.pitecan.com/Lens/ \
		${MASTER_SITE_LOCAL:S|%SUBDIR%|tota/lens|}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Mail filter written in Ruby

NO_BUILD=	yes
USE_RUBY=	yes

LIB_FILES=	lens.rb maildir.rb message.rb parsedate.rb classify.rb
RUBY_SHEBANG_FILES=	lens

OPTIONS_DEFINE=	DOCS EXAMPLES

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/lens ${STAGEDIR}${PREFIX}/bin
	@${MKDIR} ${STAGEDIR}${RUBY_SITELIBDIR}/lens
.for f in ${LIB_FILES}
	${INSTALL_DATA} ${WRKSRC}/${f} ${STAGEDIR}${RUBY_SITELIBDIR}/lens
.endfor
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/index.html ${STAGEDIR}${DOCSDIR}
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/lensrc.sample ${STAGEDIR}${EXAMPLESDIR}/dot.lensrc
	${INSTALL_DATA} ${WRKSRC}/commandmailrc.sample ${STAGEDIR}${EXAMPLESDIR}/dot.commandmailrc

.include <bsd.port.mk>
