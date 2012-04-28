# New ports collection makefile for: pgbash
# Date created:		6 July 2003
# Whom:			Sascha Holzleiter <sascha@root-login.org>
#
# $FreeBSD: ports/databases/pgbash/Makefile,v 1.8 2007/07/02 19:01:00 pav Exp $
#

PORTNAME=	pgbash
DISTVERSION=	8r4.1
CATEGORIES=	databases
MASTER_SITES=	ftp://db.psn.ne.jp/pub/pgbash/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	SQL Bash Shell for PostgreSQL

RUN_DEPENDS=	bash:${PORTSDIR}/shells/bash

WRKSRC=		${WRKDIR}/${PORTNAME}-${DISTVERSION}/src

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_PGSQL=	yes

CONFIGURE_ARGS=	--pginc-prefix=${LOCALBASE}/include --pglib-prefix=${LOCALBASE}/lib

PORTEXAMPLES=	pgbashrc-7.4 pgbashrc-8.0 pgbashrc-8.1 \
		pgbashrc-8.2 pgbashrc-8.3 pgbashrc-8.4 pgbashrc-9.0

#.include <bsd.port.pre.mk>

VER=	${PGSQL_VER:C|([0-9])([0-9])|\1.\2|}

#.if ${PGSQL_VER} > 90
#VER=	9.0
#.endif

post-patch:
	@${REINPLACE_CMD} -e 's|/etc/pgbashrc|${PREFIX}/etc/pgbashrc|g' \
		${WRKSRC}/shell.c
.for f in ${RCFILES}
	@${REINPLACE_CMD} -e 's|/etc|${PREFIX}/etc|g' \
			  -e 's|tents|tends|' \
		${WRKSRC}/../rc/${f}
.endfor

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/pgbash ${PREFIX}/bin
	@${INSTALL_DATA} ${INSTALL_WRKSRC}/../rc/pgbashrc-${VER} ${PREFIX}/etc/pgbashrc.dist
	@[ -f ${PREFIX}/etc/pgbashrc ] || \
		${CP} ${PREFIX}/etc/pgbashrc.dist \
		${PREFIX}/etc/pgbashrc
.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
.for f in ${PORTEXAMPLES}
	@${INSTALL_DATA} ${INSTALL_WRKSRC}/../rc/${f} ${EXAMPLESDIR}
.endfor
.endif

#.include <bsd.port.post.mk>
.include <bsd.port.mk>
