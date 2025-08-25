# Maintainer: NicoHood <archlinux {cat} nicohood {dog} de>
# PGP ID: 97312D5EB9D7AE7D0BD4307351DAE9B7C1AE9161
# Contributor: Martchus <martchus@gmx.net>
# Contributor: Nuno Araujo <nuno.araujo@russo79.com>
# Contributor: Limao Luo <luolimao+AUR@gmail.com>
# Contributor: Jason Giangrande <jgiangrande@clarku.edu>

_pkgname=pyusb
pkgname=python-$_pkgname
pkgdesc='USB access on Python'
pkgver=1.3.1
pkgrel=1
arch=('any')
url='https://github.com/pyusb/pyusb'
license=('BSD-3-Clause')
depends=('python' 'libusb')
makedepends=('git' 'python-setuptools-scm' 'python-setuptools' 'python-build' 'python-installer' 'python-wheel')
source=("git+$url.git?signed#tag=v$pkgver")
sha512sums=('8a2722eca8fc8b22eccb384db03ac28ad0264cf7698eae3de097ddbd73ac88803a57f38deb528ec2915732b9cffeafd0e056d13c9d4227572b687a14f801c6e7')
validpgpkeys=('B04841AE800C1BF01FE1BC3D084C5584542E1574'  # Wander Lairson Costa <wcosta@mozilla.com>
              '23F335ED4E829797734B22F65841AF7406AF7AD0') # Jonas Tadeu Silva Malaco Filho <jonas@jonasmalaco.com>

build() {
    cd $_pkgname

    export SETUPTOOLS_SCM_PRETEND_VERSION=$pkgver

    python -m build --wheel --no-isolation
}

package() {
    cd $_pkgname

    export SETUPTOOLS_SCM_PRETEND_VERSION=$pkgver

    python -m installer --destdir="$pkgdir" dist/*.whl

    install -Dm 644 LICENSE "$pkgdir"/usr/share/licenses/$pkgname/LICENSE
}
