# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

inherit cmake-utils git-r3

DESCRIPTION="a modern terminal emulator for Linux with qt5"
EGIT_REPO_URI="https://github.com/mytbk/fqterm.git"
HOMEPAGE="https://github.com/mytbk/fqterm"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-libs/openssl
	media-libs/alsa-lib
	dev-qt/qtcore
	dev-qt/qtgui
	dev-qt/qtmultimedia
	dev-qt/qtscript
	dev-qt/linguist-tools"

DEPEND="
		dev-util/cmake
		${RDEPEND}
"

src_configure() {
		local mycmakeargs=(
		-DUSE_QT5=1
		)
	cmake-utils_src_configure
}
