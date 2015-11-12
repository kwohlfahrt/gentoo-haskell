# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A command line program for extending the import list of a Haskell source file"
HOMEPAGE="http://hackage.haskell.org/package/hsimport"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10.4.0:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/cmdargs-0.10.5:=[profile?] <dev-haskell/cmdargs-0.11:=[profile?]
	>=dev-haskell/dyre-0.8:=[profile?] <dev-haskell/dyre-0.9:=[profile?]
	>=dev-haskell/haskell-src-exts-1.16.0:=[profile?] <dev-haskell/haskell-src-exts-1.17:=[profile?]
	>=dev-haskell/lens-3.9.2:=[profile?] <dev-haskell/lens-4.14:=[profile?]
	>=dev-haskell/mtl-2.1.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/split-0.2.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/text-0.11.3.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.6.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/tasty-0.9.0.1 <dev-haskell/tasty-0.12
		>=dev-haskell/tasty-golden-2.2.0.1 <dev-haskell/tasty-golden-2.4 )
"