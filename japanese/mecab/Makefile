# Created by: Akinori MUSHA aka knu <knu@idaemons.org>
# $FreeBSD$

PORTNAME=	mecab
PORTVERSION=	0.995
CATEGORIES=	japanese textproc
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	clsung@FreeBSD.org
COMMENT=	Yet Another Part-of-Speech and Morphological Analyzer

LICENSE=	BSD GPLv2 LGPL21
LICENSE_COMB=	dual
LICENSE_FILE_BSD=	${WRKSRC}/BSD
LICENSE_FILE_GPLv2=	${WRKSRC}/GPL
LICENSE_FILE_LGPL21=	${WRKSRC}/LGPL

USE_AUTOTOOLS=	libtool
USE_ICONV=	yes
USE_PERL5_BUILD=	yes
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes

CPPFLAGS+=	${PTHREAD_CFLAGS} -I ${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

MAN1=		mecab.1

PORTDOCS=	AUTHORS README *.html

OPTIONS_DEFINE=	DOCS

OPTIONS_RADIO=	CHARSET
OPTIONS_RADIO_CHARSET=	EUCJP SHIFTJIS UTF8

EUCJP_DESC=	Use EUC-JP as default charset.
SHIFTJIS_DESC=	Use SHIFT-JIS as default charset.
UTF8_DESC=	Use UTF-8 as default charset.

OPTIONS_DEFAULT=	EUCJP

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MEUCJP}
CONFIGURE_ARGS+=	--with-charset=euc-jp
.elif ${PORT_OPTIONS:MSHIFTJIS}
CONFIGURE_ARGS+=	--with-charset=shift_jis
.elif ${PORT_OPTIONS:MUTF8}
CONFIGURE_ARGS+=	--with-charset=utf-8
.endif

post-patch:
	${REINPLACE_CMD} -e 's/-lpthread/${PTHREAD_LIBS}/g' \
			 -e 's/-O3/${CFLAGS}/' ${WRKSRC}/${CONFIGURE_SCRIPT}
	${REINPLACE_CMD} -e 's/conf_DATA = mecabrc/conf_DATA = mecabrc.dist/' ${WRKSRC}/Makefile.in

post-configure:
	${CP} ${WRKSRC}/mecabrc ${WRKSRC}/mecabrc.dist

pre-install:
	${CHMOD} a+x ${WRKSRC}/install-sh

post-install:
	@if [ ! -f ${PREFIX}/etc/mecabrc ]; then \
		${INSTALL_DATA} ${PREFIX}/etc/mecabrc.dist ${PREFIX}/etc/mecabrc; \
	fi
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
.for f in ${PORTDOCS:N*.html}
	${INSTALL_DATA} ${WRKSRC}/${f} ${DOCSDIR}/
.endfor
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${DOCSDIR}/
.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
