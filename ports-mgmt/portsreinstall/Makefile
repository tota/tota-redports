# New ports collection makefile for:	portsreinstall
# Date created:		2011-12-25
# Whom:			Mamoru Sakaue / MwGhennndo
#
# $FreeBSD: ports/ports-mgmt/portsreinstall/Makefile,v 1.2 2012/03/25 19:44:06 rm Exp $
#

PORTNAME=	portsreinstall
PORTVERSION=	1.1.0
CATEGORIES=	ports-mgmt
MASTER_SITES=   SFJP \
		http://www.mwghennndo.com/softwares/${PORTNAME}/
MASTER_SITE_SUBDIR=     ${PORTNAME}/55702

MAINTAINER=	sakaue.mamoru@samurai.mwghennn.net
COMMENT=	Ports upgrading utility for massive forced reinstalltion

LICENSE=	BSD

MAN8=	${PORTNAME}.8
MANCOMPRESSED=	yes

PORTDOCS=	README

post-install:
	@${ECHO_MSG} "====================================================================="
	@${ECHO_MSG} "This software invokes some installed files of portupgrade(1)"
	@${ECHO_MSG} "when parsing pkgtools.conf(5) although dependency to it is intendedly"
	@${ECHO_MSG} "refrained. If you fail to parse pkgtools.conf(5), try to upgrade"
	@${ECHO_MSG} "this port first."
	@${ECHO_MSG} "====================================================================="
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/${PORTDOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
