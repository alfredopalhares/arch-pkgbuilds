# Archlinux PKGBUILDS


This is my collection fo Arch Linux PKGBUILDs, some these packages are also in the
[AUR](https://aur.archlinux.org)


## Updating

Update `pkgver` in [PKGBUILD](./joplin/PKGBUILD) to the latest [Joplin release](https://github.com/laurent22/joplin/releases) version.

Generate new checksums using `updpkgsums` from the `pacman-contrib` package.

```sh
updpkgsums
```

## Publishing

This uses [aurpublish](https://github.com/eli-schwartz/aurpublish)



## Contributing

Please Open a Pull Request or an Issue :)
## Packages

### Joplin 

This contains the `PKGBUILD` and other build tools to package
[Joplin](https://joplin.cozic.net/)

This package contains both the desktop and cli client


### Excalidraw Desktop

A electron wrapper over the Exaclidraw tool.
* [Excalidraw](https://excalidraw.com/)
* [Github Exaclidraw](https://github.com/excalidraw/excalidraw)
* [Github Exaclidraw Desktop](https://github.com/excalidraw/excalidraw-desktop)


### GOF5

An Open Source F5 VPN Client [GoF5](https://github.com/kayrus/gof5)

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

## Maintainer

 [Alfredo Palhares](https://github.com/masterkorp)

