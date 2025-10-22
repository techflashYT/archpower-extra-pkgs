# Maintainer: Felix Yan <felixonmars@archlinux.org>
# Maintainer: Levente Polyak <anthraxx[at]archlinux[dot]org>
# Maintainer: Caleb Maclennan <caleb@alerque.com>
# Contributor: Timothy Redaelli <timothy.redaelli@gmail.com>
# Contributor: Francois Boulogne <fboulogne at april dot org>

pkgname=python-qrcode
_pkgname=${pkgname#python-}
pkgver=8.2
pkgrel=1
pkgdesc='Python library to generate QR codes'
arch=(any)
url="https://github.com/lincolnloop/$pkgname"
license=(BSD-3-Clause)
depends=(python)
optdepends=('python-pillow: faster but not python native backend'
            'python-pypng: png support')
makedepends=(python-{build,installer,wheel}
             python-poetry-core)
checkdepends=(python-importlib-metadata
              python-pillow
              python-pypng
              python-pytest
              python-pytest-mock)
_archive="$_pkgname-$pkgver"
source=("https://files.pythonhosted.org/packages/source/${_pkgname::1}/$_pkgname/$_archive.tar.gz")
sha512sums=('79a783d49872c13fb4ca71cfb9d4892f9d9c1c04035f2afe312ad1bf7c94d00994457749ed1924eb0ca67e3060e89404ffd908563f464137e5e0c78164d8af72')

build() {
	cd "$_archive"
	python -m build -wn
}

check() {
	cd "$_archive"
	export PYTHONPATH="$PWD"
	local deselected=(
		# assumes access to dev tooling
		qrcode/tests/test_script.py
	)
	pytest ${deselected[@]/#/--deselect }
}

package() {
	cd "$_archive"
	python -m installer -d "$pkgdir" dist/*.whl
	install -Dm0644 -t "$pkgdir/usr/share/licenses/$pkgname" LICENSE
}
