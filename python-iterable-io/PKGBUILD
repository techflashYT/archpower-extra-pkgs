# Maintainer: Caleb Maclennan <caleb@alerque.com>

_pyname=iterable-io
pkgname=python-$_pyname
pkgver=1.0.0
pkgrel=4
pkgdesc='Adapt generators and other iterables to a file-like interface'
arch=(any)
url='https://github.com/pR0Ps/iterable-io'
license=(LGPL-3.0-only)
depends=(python)
makedepends=(python-{build,installer,wheel}
             python-setuptools)
checkdepends=(python-pytest)
_archive="$_pyname-$pkgver"
source=("https://files.pythonhosted.org/packages/source/${_pyname::1}/$_pyname/$_archive.tar.gz")
sha256sums=('fb9e1b739587a9ba0d5c60a3e1eb71246761583bc9f18b3c35bb112b44b18c3c')

build() {
	cd "$_archive"
	python -m build -wn
}

check() {
	cd "$_archive"
	export PYTHONPATH="$PWD"
	pytest
}

package() {
	cd "$_archive"
	python -m installer -d "$pkgdir" dist/*.whl
}
