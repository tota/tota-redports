# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD$

PORTNAME=	sendmailR
DISTVERSION=	1.1-2
CATEGORIES=	mail
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Send email using R

LICENSE=	GPLv2

RUN_DEPENDS=	R-cran-base64enc>0:${PORTSDIR}/converters/R-cran-base64enc

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

OPTIONS_DEFINE=	CONTENT_ID CONTENT_TYPE
CONTENT_ID_DESC=	Enable to set the Content-Type
CONTENT_TYPE_DESC=	Add Content-ID of attachment files

OPTIONS_DEFAULT=	CONTENT_ID CONTENT_TYPE
#OPTIONSFILE=	${PORT_DBDIR}/R-cran-${PORTNAME}/options

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MCONTENT_ID}
EXTRA_PATCHES+=	${PATCHDIR}/extra-patch-R-mime_part.R
# https://github.com/yokkuns/sendmailR/commit/880a491c3cf4b6b3c2648568bef6d74fc63895a8
.endif

.if ${PORT_OPTIONS:MCONTENT_TYPE}
EXTRA_PATCHES+=	${PATCHDIR}/extra-patch-R-sendmailR.r
# https://github.com/yokkuns/sendmailR/commit/65d40c52547dc15679696b911e054ea64ef77c53
.endif

.include <bsd.port.mk>
