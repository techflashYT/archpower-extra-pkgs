# Maintainer: Levente Polyak <anthraxx[at]archlinux[dot]org>
# Maintainer: T.J. Townsend <blakkheim@archlinux.org>
# Contributor: Guillaume ALAUX <guillaume@archlinux.org> 
# Contributor: Eric Belanger <eric@archlinux.org>
# Contributor: Sarah Hay <sarahhay@mb.sympatico.ca>

pkgname=cowsay
pkgver=3.8.4
pkgrel=1
pkgdesc='Configurable talking cow (and a bit more)'
arch=('any')
url='https://cowsay.diamonds'
license=('GPL-3.0-only')
makedepends=('git')
depends=('perl')
source=("git+https://github.com/cowsay-org/cowsay.git#tag=v${pkgver}")
sha256sums=('9903bad2f81823d70b7dbdfcbe0c18d269359a84572be8e926e3747561e05884')

package() {
  cd ${pkgname}
  make DESTDIR="${pkgdir}" install prefix=/usr
  rm -r "${pkgdir}"/usr/etc
}
