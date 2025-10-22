# Maintainer: Felix Yan <felixonmars@archlinux.org>

pkgname=python-pytest-twisted
pkgver=1.14.3
pkgrel=2
pkgdesc='A twisted plugin for py.test'
arch=('any')
license=('BSD')
url='https://github.com/pytest-dev/pytest-twisted'
depends=('python-pytest' 'python-greenlet' 'python-decorator' 'python-twisted')
makedepends=('git' 'python-setuptools')
source=("git+https://github.com/pytest-dev/pytest-twisted.git#tag=v$pkgver")
sha512sums=('afbc985721bb7d7b063c1181c0d295d930c0f6eb2a66434eee4980755c77657456bd9817bc42e29230341eb51cb59c0bd54f39484d4e95ff810cb3eaf5d09a61')

build() {
  cd pytest-twisted
  python setup.py build
}

check() {
  # Hack entry points by installing it

  cd pytest-twisted
  python setup.py install --root="$PWD/tmp_install" --optimize=1
  local site_packages=$(python -c "import site; print(site.getsitepackages()[0])")
  PYTHONPATH="$PWD/tmp_install/${site_packages}:$PYTHONPATH" py.test
}

package() {
  cd pytest-twisted
  python setup.py install --root="$pkgdir" --optimize=1
}
