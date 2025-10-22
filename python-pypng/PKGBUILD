# Maintainer: George Rawlinson <grawlinson@archlinux.org>
# Contributor: Filipe Laíns (FFY00) <lains@archlinux.org>

pkgname=python-pypng
pkgver=0.20250521.0
pkgrel=1
pkgdesc='Pure Python library for PNG image encoding/decoding'
arch=('any')
url='https://gitlab.com/drj11/pypng'
license=('MIT')
depends=('python')
makedepends=(
  'git'
  'python-build'
  'python-installer'
  'python-setuptools'
  'python-wheel'
)
source=("$pkgname::git+$url#tag=pypng-$pkgver")
sha512sums=('a9d08a04df69e8cabe9bb968de184f9a3fdf5f2692950019a60ff782b23edd772bd02d9e73c0ec03905affebc0eafe91f282f0b3a38a3697a056e4d962bd96f4')
b2sums=('237753f8c1b60f32857223d307fcb0dee57e1aadab4dd60175dd497d9462d2bb99d41e8cf76a1a7cc211ca6427f6a8b53c5293ba8444d83bcda827144452606a')

#prepare() {
#  cd $_pkgname-$_pkgname-$pkgver
#
#  echo -e 'import setuptools\nsetuptools.setup()' >setup.py
#}

build() {
  cd "$pkgname"

  python -m build --wheel --no-isolation
}

check() {
  cd "$pkgname/code"

  python -m unittest
}

package() {
  cd "$pkgname"

  python -m installer --destdir="$pkgdir" dist/*.whl

  # license
  install -vDm644 -t "$pkgdir/usr/share/licenses/$pkgname" LICENCE
}
