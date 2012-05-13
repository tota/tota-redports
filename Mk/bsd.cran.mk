# Date created:		2009-01-25
# Whom:			Wen Heping <wenheping@gmail.com>
#
# $FreeBSD: ports/Mk/bsd.cran.mk,v 1.12 2012/05/04 20:56:01 bf Exp $
#

CRAN_Include_MAINTAINER=	wen@FreeBSD.org

MASTER_SITE_CRAN+=	http://ftp.ctex.org/mirrors/CRAN/src/contrib/ \
			http://cran.rakanu.com/src/contrib/ \
			http://cran.ms.unimelb.edu.au/src/contrib/ \
			http://mirror.its.dal.ca/cran/src/contrib/ \
			http://mirrors.dotsrc.org/cran/src/contrib/ \
			http://cran.univ-lyon1.fr/src/contrib/ \
			http://ftp5.gwdg.de/pub/misc/cran/src/contrib/ \
			http://cran.stat.unipd.it/src/contrib/ \
			http://cran.md.tsukuba.ac.jp/src/contrib/ \
			http://mirrors.ibiblio.org/pub/mirrors/CRAN/src/contrib/ \
			http://cran.cnr.berkeley.edu/src/contrib/

MASTER_SITES?=	${MASTER_SITE_CRAN}

USE_FORTRAN=	yes
BUILD_DEPENDS+=	${LOCALBASE}/bin/R:${PORTSDIR}/math/R
RUN_DEPENDS+=	${LOCALBASE}/bin/R:${PORTSDIR}/math/R

PKGNAMEPREFIX?=	R-cran-

R_MOD_DIR?=	lib/R/library/${PORTNAME}
PLIST_SUB+=	R_MOD_DIR=${R_MOD_DIR}
WRKSRC?=	${WRKDIR}/${PORTNAME}

NO_BUILD=	yes
R_COMMAND=	${LOCALBASE}/bin/R

.if !target(regression-test)
R_POSTCMD_CHECK_OPTIONS?=	--timings

.if !exists(${LOCALBASE}/bin/pdflatex)
R_POSTCMD_CHECK_OPTIONS+=	--no-manual --no-rebuild-vignettes
.endif

regression-test: build
	@cd ${WRKDIR} ; ${SETENV} ${MAKE_ENV} _R_CHECK_FORCE_SUGGESTS_=FALSE \
	${R_COMMAND} ${R_PRECMD_CHECK_OPTIONS} CMD check \
	${R_POSTCMD_CHECK_OPTIONS} ${PORTNAME}
.endif

.if !target(do-install)
.if defined(NOPORTDATA)
R_POSTCMD_INSTALL_OPTIONS+=	--no-data --no-demo
.else
R_POSTCMD_INSTALL_OPTIONS+=	--install-tests
.endif

.if defined(NOPORTDOCS)
R_POSTCMD_INSTALL_OPTIONS+=	--no-docs --no-html
.endif

do-install:
	@cd ${WRKDIR} ; ${SETENV} ${MAKE_ENV} ${R_COMMAND} \
	${R_PRECMD_INSTALL_OPTIONS} CMD INSTALL \
	${R_POSTCMD_INSTALL_OPTIONS} ${PORTNAME}
.endif

.if defined(R_MOD_AUTOPLIST)
.if !target(post-install-script)
post-install-script:
	@${FIND} -ds ${PREFIX}/${R_MOD_DIR} \( -type f -or -type l \) -print | \
		${SED} -E -e 's,^${PREFIX}/?,,' >> ${TMPPLIST}
	@${FIND} -ds ${PREFIX}/${R_MOD_DIR} -type d -print | ${SED} -E -e \
		's,^${PREFIX}/?,@dirrm ,' >> ${TMPPLIST}
.endif
.endif

