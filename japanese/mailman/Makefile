# New ports collection makefile for:	ja-mailman
# Date created:				21 Feb 2003
# Whom:					Sunagawa Koji <koj@ofug.net>
#
# $FreeBSD: ports/japanese/mailman/Makefile,v 1.4 2005/06/18 18:39:36 nork Exp $
#

CATEGORIES=	japanese mail

MAINTAINER=	koj@ofug.net
COMMENT=	Japanized mailman which is a mailing list manager with a web front-end

MASTERDIR=	${.CURDIR}/../../mail/mailman

.undef		WITH_HTDIG

pre-configure::
	@ ${ECHO} "DEFAULT_SERVER_LANGUAGE = 'ja'" >> ${WRKSRC}/Mailman/mm_cfg.py.dist.in

.include "${MASTERDIR}/Makefile"
