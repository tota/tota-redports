# Created by: Yoshihiko Sarumaru <mistral@imasy.or.jp>
# $FreeBSD: head/devel/astah-community/Makefile 327722 2013-09-20 17:03:26Z bapt $

PORTNAME=	astah
PORTVERSION=	6.7.0
CATEGORIES=	devel java
MASTER_SITES=	#
PKGNAMESUFFIX=	-community
DISTNAME=	${PORTNAME}${PKGNAMESUFFIX}-${PORTVERSION:S!.!_!g}-${REVISION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Java/UML Object-Oriented Design Tool

LICENSE=	EULA
LICENSE_NAME=	End User License Agreement
LICENSE_TEXT=	${RESTRICTED}
LICENSE_PERMS=	no-dist-mirror no-dist-sell no-pkg-mirror no-pkg-sell no-auto-accept

RESTRICTED=	See http://astah.net/faq/community/enduser-license-agreement
LEGAL_TEXT=	License restrictions

USE_ZIP=	yes
USE_JAVA=	yes
JAVA_VERSION=	1.7+
REVISION=	43495

WRKSRC=		${WRKDIR}/${PORTNAME}${PKGNAMESUFFIX:S!-!_!}

PORTDOCS=	API_sample_program_license_agreement.txt \
		API_sample_program_license_agreement_ja.txt \
		CommandRunner.html CommandRunner_ja.html \
		ProductInformation.txt \
		api
PORTEXAMPLES=	astah-key.properties_org Sample.asta
PORTDATA=	astah-community.jar astah-api.jar astah-gui_en.properties_org \
		astah.ico astah-doc.ico Welcome.asta Welcome_ja.asta \
		lib template

NO_BUILD=	yes

PLIST_FILES=	bin/astah bin/astah-command.sh

DOCSDIR=	${PREFIX}/share/doc/${PORTNAME}${PKGNAMESUFFIX}
EXAMPLESDIR=	${PREFIX}/share/examples/${PORTNAME}${PKGNAMESUFFIX}
DATADIR=	${JAVASHAREDIR}/${PORTNAME}${PKGNAMESUFFIX}

REINPLACE_ARGS=	-i ""

OPTIONS_DEFINE=	DOCS EXAMPLES

.include <bsd.port.pre.mk>

.if !exists(${DISTDIR}/${DISTNAME}${EXTRACT_SUFX})
DOWNLOAD_URL=	http://members.change-vision.com/files/${PORTNAME}${PKGNAMESUFFIX:S!-!_!}/${PORTVERSION:S!.!_!g}/${DISTFILES}
IGNORE=		needs you to fetch manually the distribution file\
		from ${DOWNLOAD_URL}, \
		then place it in ${DISTDIR} and run make again
.endif

post-patch:
.for script in ${PLIST_FILES:S!bin/!!}
	${REINPLACE_CMD} -e "s!%%JAVA_HOME%%!${JAVA_HOME}!g; \
	                     s!%%DATADIR%%!${DATADIR}!" \
		 ${WRKSRC}/${script}
.endfor
.if ${PORT_OPTIONS:MDOCS}
	${REINPLACE_CMD} 's/png\\/png\//' ${WRKSRC}/api/en/doc/astahAPI_reference.html
.endif

do-install:
.for script in ${PLIST_FILES:S!bin/!!}
	${INSTALL_SCRIPT} ${WRKSRC}/${script} ${STAGEDIR}${PREFIX}/bin
.endfor
	${MKDIR} ${STAGEDIR}${DATADIR}
	(cd ${WRKSRC} && ${COPYTREE_SHARE} "${PORTDATA}" ${STAGEDIR}${DATADIR})
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${STAGEDIR}${DOCSDIR}
.for docfile in ${PORTDOCS:Napi}
	${INSTALL_DATA} ${WRKSRC}/${docfile} ${STAGEDIR}${DOCSDIR}
.endfor
	${MKDIR} ${STAGEDIR}${DOCSDIR}/api
	(cd ${WRKSRC}/api && ${COPYTREE_SHARE} \* ${STAGEDIR}${DOCSDIR}/api)
.endif
.if ${PORT_OPTIONS:MEXAMPLES}
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
.for examplefile in ${PORTEXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/${examplefile} ${STAGEDIR}${EXAMPLESDIR}
.endfor
.endif

.include <bsd.port.post.mk>
