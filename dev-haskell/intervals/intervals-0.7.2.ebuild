# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999
#hackport: flags: -herbie

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Interval Arithmetic"
HOMEPAGE="https://github.com/ekmett/intervals"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+test-doctests"

RDEPEND=">=dev-haskell/distributive-0.2:=[profile?] <dev-haskell/distributive-1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( test-doctests? ( >=dev-haskell/doctest-0.9.1
					dev-haskell/quickcheck ) )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-herbie \
		$(cabal_flag test-doctests test-doctests)
}