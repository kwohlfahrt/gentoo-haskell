# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Library to authenticate with OAuth for Haskell web applications"
HOMEPAGE="https://github.com/yesodweb/authenticate"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base64-bytestring-0.1:=[profile?] <dev-haskell/base64-bytestring-1.1:=[profile?]
	dev-haskell/blaze-builder:=[profile?]
	>=dev-haskell/crypto-pubkey-types-0.1:=[profile?] <dev-haskell/crypto-pubkey-types-0.5:=[profile?]
	dev-haskell/data-default:=[profile?]
	>=dev-haskell/http-client-0.3:=[profile?]
	>=dev-haskell/http-types-0.6:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/rsa-2.0:=[profile?]
	>=dev-haskell/sha-1.4:=[profile?] <dev-haskell/sha-1.7:=[profile?]
	>=dev-haskell/transformers-0.1:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_prepare() {
	cabal_chdeps \
		'RSA                           >= 2.0      && < 2.2' 'RSA                           >= 2.0'
}