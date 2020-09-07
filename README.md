# Joplin - Arch Linux

## Overview

This contains the `PKGBUILD` and other build tools to package
[Joplin](https://joplin.cozic.net/)

This package contains both the desktop and cli client

## Installing

You can use an AUR wrapper like [yay](https://aur.archlinux.org/packages/yay/):

```sh
yay -S joplin
```

[Check the current AUR version here.](https://aur.archlinux.org/packages/joplin/)

## Building

Build with makepkg

```sh
makepkg -fc
```

Check more information on the [Archwiki](https://wiki.archlinux.org/index.php/Makepkg)

## Updating

Update `pkgver` in [PKGBUILD](./joplin/PKGBUILD) to the latest [Joplin release](https://github.com/laurent22/joplin/releases) version.

Generate new checksums using `updpkgsums` from the `pacman-contrib` package.

```sh
updpkgsums
```

Build the package from [joplin](./joplin) folder

```sh
../build.sh
```

Install the package

```sh
makepkg -i
```

Run the Joplin GUI and CLI from a terminal to test if the install worked

```sh
joplin # CLI
:exit
joplin-desktop # GUI
```

## Contributing

Please Open a Pull Request or an Issue :)

## Maintainer

 [Alfredo Palhares](https://github.com/masterkorp)

