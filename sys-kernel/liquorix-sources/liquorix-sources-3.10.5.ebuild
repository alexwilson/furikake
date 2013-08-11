# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
ETYPE="sources"
K_DEBLOB_AVAILABLE="1"
inherit kernel-2
detect_version
detect_arch

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
HOMEPAGE="http://liquorix.net"
RESTRICT="mirror"
IUSE="deblob"

LIQUORIX_PATCH="${PV}-2.patch.gz"
LIQUORIX_URI="http://liquorix.net/sources/${LIQUORIX_PATCH}"

DESCRIPTION="Liquorix kernel sources"
UNIPATCH_LIST="${DISTDIR}/${LIQUORIX_PATCH}"
UNIPATCH_STRICTORDER="yes"
UNIPATCH_EXCLUDE="patch-${PV}.patch"
SRC_URI="${KERNEL_URI} ${LIQUORIX_URI}"

pkg_postinst() {
	kernel-2_pkg_postinst
	einfo "For more info on this patchset, and how to report problems, see:"
	einfo "${HOMEPAGE}"
}

pkg_postrm() {
	kernel-2_pkg_postrm
}
