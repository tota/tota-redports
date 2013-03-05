# Created by: Jun-ichiro itojun Hagino <itojun@itojun.org>
# $FreeBSD: head/ports-mgmt/portlint/Makefile 309644 2012-12-29 23:19:06Z marcus $
#
# This port is self contained in the src directory.
#

PORTNAME=	portlint
PORTVERSION=	2.14.1
PORTREVISION=	1
CATEGORIES=	ports-mgmt
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	marcus@FreeBSD.org
COMMENT=	A verifier for FreeBSD port directory

NO_BUILD=	yes
WRKSRC=		${WRKDIR}/src
USE_PERL5_RUN=	yes

SRC=		${.CURDIR}/src

MAN1=		portlint.1
PLIST_FILES=	bin/portlint

.if !defined(NOPORTEXAMPLES)
PLIST_FILES+=	%%EXAMPLESDIR%%/portlintgrep
PLIST_DIRS=	%%EXAMPLESDIR%%
.endif

do-fetch:
	@${DO_NADA}

pre-patch:
	@${CP} -R ${SRC} ${WRKDIR}

post-patch:
	@${REINPLACE_CMD} -e 's|/usr/bin/perl|${PERL}|' ${WRKSRC}/portlint.pl
	@${REINPLACE_CMD} -e 's|/usr/bin/perl|${PERL}|' \
		${WRKSRC}/portlintgrep.pl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/portlint.pl ${PREFIX}/bin/portlint
	${INSTALL_MAN} ${WRKSRC}/portlint.1 ${MAN1PREFIX}/man/man1
.if !defined(NOPORTEXAMPLES)
	${INSTALL} -o ${SHAREOWN} -g ${SHAREGRP} -m ${BINMODE} -d ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/portlintgrep.pl ${EXAMPLESDIR}/portlintgrep
.endif

.include <bsd.port.mk>