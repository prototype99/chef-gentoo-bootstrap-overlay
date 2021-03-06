# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18"

RUBY_FAKEGEM_EXTRADOC="README.rdoc"
RUBY_FAKEGEM_EXTRAINSTALL="data"

inherit ruby-fakegem

DESCRIPTION="Library for calculating weekly time differences between timezones"
HOMEPAGE="https://github.com/emiddleton/carmen"
SRC_URI="https://github.com/emiddleton/carmen/tarball/v${PV} -> ${P}.tar.gz"
S="${WORKDIR}/emiddleton-${PN}-*"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

