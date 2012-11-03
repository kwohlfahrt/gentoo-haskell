# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Core libraries for diagrams EDSL"
HOMEPAGE="http://projects.haskell.org/diagrams"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/memotrie-0.4.7:=[profile?]
		<dev-haskell/memotrie-0.6:=[profile?]
		=dev-haskell/newtype-0.2*:=[profile?]
		>=dev-haskell/semigroups-0.3.4:=[profile?]
		<dev-haskell/semigroups-0.9:=[profile?]
		=dev-haskell/vector-space-0.8*:=[profile?]
		=dev-haskell/vector-space-points-0.1*:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@base >= 4.2 && < 4.6@base >= 4.2 \&\& < 4.7@' \
	    -i "${S}/${PN}.cabal" || die "Could not loosen dependencies"

	sed -e 's@containers >= 0.3 && < 0.5@containers >= 0.3 \&\& < 0.6@' \
	    -i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
