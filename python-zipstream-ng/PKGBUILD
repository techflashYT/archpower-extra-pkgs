# Maintainer: Caleb Maclennan <caleb@alerque.com>
# Contributor: Aleksandr Beliaev <trap000d@gmail.com>

_pkgname=zipstream-ng
pkgname=python-$_pkgname
pkgver=1.9.0
pkgrel=1
pkgdesc='A modern and easy to use streamable zip file generator'
arch=(any)
url="https://github.com/pR0Ps/$_pkgname"
license=(LGPL-3.0-only)
depends=(python)
provides=("python-zipstream=$pkgver")
conflicts=(python-zipstream)
makedepends=(python-{build,installer,wheel}
             python-setuptools)
_archive="$_pkgname-$pkgver"
source=("$url/archive/v$pkgver/$_archive.tar.gz")
sha256sums=('ea566bd08feeb16c9045a1c197a313e2ddcde8511e5866a556aeada34ae25bad')

build() {
	cd "$_archive"
	python -m build -wn
}

package() {
	cd "$_archive"
	python -m installer -d "$pkgdir" dist/*.whl
}
