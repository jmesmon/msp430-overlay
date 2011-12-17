# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

PATCHVER="1.2"
ELF2FLT_VER=""
inherit toolchain-binutils

MY_PV="${PV%_p*}"
SRC_URI="mirror://gnu/binutils/binutils-${MY_PV}.tar.bz2
	mirror://gentoo/binutils-${MY_PV}-patches-${PATCHVER}.tar.bz2"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}/binutils-${MY_PV}"

src_prepare() {
	epatch "${FILESDIR}"/${P}.patch
}
