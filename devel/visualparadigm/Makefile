# New ports collection makefile for:	visualparadigm
# Date created:                		Sun Jul 1 2012
# Whom:					Fernando Apesteguia <fernando.apesteguia@gmail.com>
#
# $FreeBSD$

PORTNAME=	visualparadigm
PORTVERSION=	10.0
CATEGORIES=	devel
MASTER_SITES=	http://www.visual-paradigm.com/downloads/vpuml/
DISTNAME=	Visual_Paradigm_for_UML_Linux_NoInstall

MAINTAINER=	fernando.apesteguia@gmail.com
COMMENT=	Visual modeling tool for all kinds of UML diagrams

USE_JAVA=	yes
JAVA_VERSION=	1.6+
NO_BUILD=	yes

WRKSRC=		${WRKDIR}

INSTALLDIR=	${PREFIX}/${PORTNAME}

EXTRACT_NAME=	Visual_Paradigm_for_UML_10.0

FETCH_ARGS=	-Fpr

post-patch:
	@${FIND} ${WRKSRC} -name *.dll -delete -or -name *.exe -delete -or -name *.orig -delete

do-install:
	@${MKDIR} ${INSTALLDIR}
	cd ${WRKSRC}/${EXTRACT_NAME} && ${COPYTREE_SHARE} \* ${INSTALLDIR} && ${CP} -R .install4j ${INSTALLDIR}

post-install:
	@${CHMOD} 755 ${INSTALLDIR}/bin/V* ${INSTALLDIR}/bin/E* ${INSTALLDIR}/bin/L*

	@${ECHO_MSG} ""
	@${ECHO_MSG} "******************************************************************"
	@${ECHO_MSG} Visit http://www.visual-paradigm.com/ to get either a community or
	@${ECHO_MSG} an entreprise license key
	@${ECHO_MSG} "******************************************************************"
	@${ECHO_MSG} ""

.include <bsd.port.mk>
