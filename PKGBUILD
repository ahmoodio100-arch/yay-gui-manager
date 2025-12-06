pkgname=yay-gui-manager-git
_pkgname=yay-gui-manager
pkgver=1.0.0
pkgrel=1
pkgdesc="Graphical interface for the yay AUR helper"
arch=('any')
url="https://github.com/ahmoodio/yay-gui-manager"
license=('MIT')
depends=('python' 'python-pyqt5' 'yay')
makedepends=('git')
install="${pkgname}.install"
source=(
  "git+https://github.com/ahmoodio/yay-gui-manager.git"
  "yay-gui.desktop"
  "yay-gui.png"
)
sha256sums=('SKIP'
            'SKIP'
            'SKIP')

pkgver() {
  cd "${srcdir}/${_pkgname}"
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
  cd "${srcdir}/${_pkgname}"

  install -Dm755 "yay_gui.py" "${pkgdir}/usr/bin/yay-gui-manager"

  install -Dm644 "${srcdir}/yay-gui.desktop"     "${pkgdir}/usr/share/applications/yay-gui.desktop"

  # Icon is optional: package expects yay-gui.png in source dir if you add it
  if [[ -f "${srcdir}/yay-gui.png" ]]; then
    install -Dm644 "${srcdir}/yay-gui.png"       "${pkgdir}/usr/share/icons/hicolor/256x256/apps/yay-gui.png"
  fi

  install -Dm644 "LICENSE"     "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}
