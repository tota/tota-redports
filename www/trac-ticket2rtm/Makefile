# New ports collection makefile for:	trac-ticket2rtm
# Date created:		2011-12-04
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD$
#

PORTNAME=	ticket2rtm
PORTVERSION=	0.1
CATEGORIES=	www python
MASTER_SITES=	http://trac-hacks.org/attachment/wiki/Ticket2RTM/
PKGNAMEPREFIX=	trac-

MAINTAINER=	tota@FreeBSD.org
COMMENT=	A trac plugin that synchronizes Trac tickets and RTM tasks

USE_ZIP=	yes
USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install

WRKSRC=	${WRKDIR}/${PORTNAME}

DOCSDIR=	${PREFIX}/share/doc/${UNIQUENAME}
EXAMPLESDIR=	${PREFIX}/share/examples/${UNIQUENAME}

PORTDOCS=	README
PORTEXAMPLES=	trac_ini_sample.txt

.include <bsd.port.pre.mk>

.if !exists(${DISTDIR}/${DISTNAME}${EXTRACT_SUFX})
do-fetch:
	${FETCH_CMD} -o ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX} "${MASTER_SITES}${DISTNAME}${EXTRACT_SUFX}?format=raw"
.endif

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${INSTALL_WRKSRC}/${PORTDOCS} ${DOCSDIR}
.endif
.if !defined(NOPORTEXAMPLES)
	${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${INSTALL_WRKSRC}/${PORTEXAMPLES} ${EXAMPLESDIR}
.endif

x-generate-plist:
	${FIND} ${PYTHON_SITELIBDIR}/${PYEASYINSTALL_EGG} -type f | ${SORT} | ${SED} -e 's,${PYTHON_SITELIBDIR},%%PYTHON_SITELIBDIR%%,' -e 's,${PYEASYINSTALL_EGG},%%PYEASYINSTALL_EGG%%,' > pkg-plist.new
	${FIND} ${PYTHON_SITELIBDIR}/${PYEASYINSTALL_EGG} -type d | ${SORT} | ${SED} -e 's,${PYTHON_SITELIBDIR},@dirrm %%PYTHON_SITELIBDIR%%,' -e 's,${PYEASYINSTALL_EGG},%%PYEASYINSTALL_EGG%%,' >> pkg-plist.new
.include <bsd.port.post.mk>
