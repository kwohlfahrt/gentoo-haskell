# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

GTK_MAJ_VER="3"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
CABAL_FEATURES+=" nocabaldep" # needs ghc's version as used by leksah
inherit haskell-cabal git-2

DESCRIPTION="Leksah tool kit"
HOMEPAGE="http://www.leksah.org"
EGIT_REPO_URI="https://github.com/leksah/ltk.git"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="+gtk3"

RDEPEND=">=dev-haskell/cabal-1.6.0:=[profile?] <dev-haskell/cabal-1.21:=[profile?]
	>=dev-haskell/glib-0.13.0.0:=[profile?] <dev-haskell/glib-0.14:=[profile?]
	>=dev-haskell/mtl-1.1.0.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/parsec-2.1.0.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/text-0.11.0.6:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.2.2.0:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	dev-lang/ghc:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	gtk3? ( >=dev-haskell/gtk-0.13.1:3=[profile?] <dev-haskell/gtk-0.14:3=[profile?] )
	!gtk3? ( >=dev-haskell/gtk-0.13.1:2=[profile?] <dev-haskell/gtk-0.14:2=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	cabal_src_configure \
		--constraint="Cabal == $(cabal-version)" \
		$(cabal_flag gtk3 gtk3)
}
