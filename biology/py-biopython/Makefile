# Created by: Johann Visagie <johann@egenetics.com>
# $FreeBSD: head/biology/py-biopython/Makefile 340722 2014-01-22 17:00:46Z mat $

PORTNAME=	biopython
PORTVERSION=	1.60
PORTREVISION=	2
CATEGORIES=	biology python
MASTER_SITES=	http://www.biopython.org/DIST/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	mauricio@arareko.net
COMMENT=	Collection of Python modules for bioinformatics

BUILD_DEPENDS=	${PYNUMPY}
RUN_DEPENDS=	${PYNUMPY}

USE_PYTHON=	2
USE_PYDISTUTILS=	easy_install
PYEASYINSTALL_ARCHDEP=	yes

.if !defined(WITHOUT_REPORTLAB)
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}reportlab1>0:${PORTSDIR}/print/py-reportlab1
.endif

NO_STAGE=	yes
.include <bsd.port.mk>
