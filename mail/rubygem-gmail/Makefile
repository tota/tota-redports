# $FreeBSD$

PORTNAME=	gmail
PORTVERSION=	0.4.0
CATEGORIES=	mail rubygems
MASTER_SITES=	RG

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Rubyesque interface to Gmail, with all the tools you will need

RUN_DEPENDS=	rubygem-gmail_xoauth>=0.3.0:${PORTSDIR}/net/rubygem-gmail_xoauth \
		rubygem-mail>=2.2.1:${PORTSDIR}/mail/rubygem-mail \
		rubygem-mime>=0.1:${PORTSDIR}/devel/rubygem-mime

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
