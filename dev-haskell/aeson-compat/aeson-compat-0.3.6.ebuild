# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Compatibility layer for aeson"
HOMEPAGE="https://github.com/phadej/aeson-compat#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.7.0.6:=[profile?] <dev-haskell/aeson-1.1:=[profile?]
	>=dev-haskell/attoparsec-0.12:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/base-compat-0.6.0:=[profile?] <dev-haskell/base-compat-0.10:=[profile?]
	>=dev-haskell/exceptions-0.8:=[profile?] <dev-haskell/exceptions-0.9:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/nats-1:=[profile?] <dev-haskell/nats-1.2:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/semigroups-0.16.2.2:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/tagged-0.7.3:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/time-locale-compat-0.1.0.1:=[profile?] <dev-haskell/time-locale-compat-0.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/base-orphans-0.4.5 <dev-haskell/base-orphans-0.6
		>=dev-haskell/quickcheck-2.7.6
		>=dev-haskell/quickcheck-instances-0.3 <dev-haskell/quickcheck-instances-0.3.13
		>=dev-haskell/tasty-0.10 <dev-haskell/tasty-0.12
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.10
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.9 )
"

src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck            >=2.7.6 && <2.9.2' 'QuickCheck            >=2.7.6'
}