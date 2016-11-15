# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Write Haskell source files including C code inline. No FFI required"
HOMEPAGE="http://hackage.haskell.org/package/inline-c"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="gsl-example"

RDEPEND="dev-haskell/ansi-wl-pprint:=[profile?]
	dev-haskell/cryptohash:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/parsec-3:=[profile?]
	dev-haskell/parsers:=[profile?]
	dev-haskell/quickcheck:2=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	gsl-example? ( >=dev-haskell/chart-1.3:=[profile?]
			dev-haskell/chart-cairo:=[profile?]
			sci-libs/gsl
			virtual/libc )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hspec-2
		dev-haskell/raw-strings-qq
		dev-haskell/regex-posix )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag gsl-example gsl-example)
}
