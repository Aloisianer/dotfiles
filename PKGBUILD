# Maintainer: Koeqaife
pkgname=hypralois
_pkgname=dotfiles
pkgver=2.0.6
pkgrel=1
pkgdesc="Dynamic and elegant desktop setup inspired by Material You, featuring auto-generated colors, fluid animations, and customizable user experience."
arch=('x86_64')
url="https://github.com/aloisianer/dotfiles"
install=hypralois.install
license=('GPL3')
source=("$_pkgname::git+https://github.com/aloisianer/dotfiles.git")
sha256sums=('SKIP')

depends=(
  'hyprland'
)

optdepends=(
  'hypralois-utils: A replacement of hyprland-qtutils with MaterialYou style'
  'hypralois-greeter: Config for Greetd'
  'ttf-meslo-nerd-font-powerlevel10k: Font for alacritty'
  'alacritty: I recommend to use this terminal'
)

makedepends=(
  'cython'
  'git'
  'gcc'
)

build() {
  cd "$srcdir/$_pkgname/$pkgname"
  python utils_cy/setup.py build_ext --build-lib utils_cy --build-temp "$(mktemp -d)"
  cd "$srcdir/$_pkgname/build"

  COMMON_FLAGS="-Wall -Wextra -Wpedantic -Wshadow -Wformat=2 -Wcast-align -Wconversion -Wstrict-overflow=5 -O3 -flto -fno-plt -march=x86-64 -mtune=generic"

  gcc $COMMON_FLAGS client.c -o hypraloisctl
  gcc $COMMON_FLAGS $(pkg-config --cflags --libs gtk4) -o hypralois-start hypralois-start.c
  gcc $COMMON_FLAGS $(pkg-config --cflags --libs gtk4) -o hypralois-crash-dialog crash-dialog.c
}

package() {
  mkdir -pv "$pkgdir/usr/bin"
  mkdir -pv "$pkgdir/usr/share/$pkgname"
  mkdir -pv "$pkgdir/usr/share/fonts/$pkgname"
  mkdir -pv "$pkgdir/usr/lib/$pkgname"
  mkdir -pv "$pkgdir/usr/share/licenses/$pkgname"
  mkdir -pv "$pkgdir/usr/share/wayland-sessions"

  cp -a "$srcdir/$_pkgname/$pkgname/." "$pkgdir/usr/lib/$pkgname/"
  cp -a "$srcdir/$_pkgname/$pkgname-assets/." "$pkgdir/usr/share/$pkgname/"
  cp -a "$srcdir/$_pkgname/assets/Google Sans/." "$pkgdir/usr/share/fonts/$pkgname/Google Sans/"
  cp -a "$srcdir/$_pkgname/assets/Google Sans Display/." "$pkgdir/usr/share/fonts/$pkgname/Google Sans Display/"
  cp -a "$srcdir/$_pkgname/assets/Google Sans Text/." "$pkgdir/usr/share/fonts/$pkgname/Google Sans Text/"

  install -Dm755 "$srcdir/$_pkgname/build/hypraloisctl" "$pkgdir/usr/bin/hypraloisctl"
  install -Dm755 "$srcdir/$_pkgname/build/hypralois-start" "$pkgdir/usr/bin/hypralois-start"
  install -Dm755 "$srcdir/$_pkgname/build/hypralois-crash-dialog" "$pkgdir/usr/bin/hypralois-crash-dialog"

  install -Dm644 "$srcdir/$_pkgname/LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
  install -Dm644 "$srcdir/$_pkgname/assets/hypralois.desktop" "$pkgdir/usr/share/wayland-sessions/hypralois.desktop"
}
