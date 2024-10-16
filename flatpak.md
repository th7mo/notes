---
title: "Flatpak"
description: "A utility for software deployment and package management for Linux"
isPublic: true
dateCreated: "07-02-2024"
dateLastModified: "16-10-2024"
---

Some proprietary applications or applications are not provided by the
[Debian repository](https://www.debian.org/distrib/packages). In those cases it
could be better to install the Flatpak packaged version of that application.
[Steam](https://store.steampowered.com/) and [Parsec](https://parsec.app/) are
examples of applications that are challenging to install on Debian and should be
isolated using [Flatpak](https://flatpak.org/).

## Installation
The Debian package for Flatpak is `flatpak`. Install Flatpak with the following
command:

```sh
sudo apt install flatpak
```

## Usage
Refer to the [Flatpak website](https://flatpak.org/) for how to install
applications using Flatpak.

## Make application launchers find Flatpak applications
When the Flatpak applications are installed, most application launchers are not
able to find them. This is because the Flatpak applications are not in a
directory listed in the [$PATH variable](path-variable). To make those
application launchers find the Flatpak applications, it is possible to create
a [symbolic link](symbolic-link) to the `/usr/bin/` directory (or any other
directory included in the `$PATH` variable)[^1].

[^1]: I learned about symbolic linking of Flatpak installed applications from this from a very specific [GitHub Gist](https://gist.github.com/curioswati/668e9e120ddd4b6f8d07dc28b5780d22).

```sh
ln -s /var/lib/flatpak/exports/bin/<installed-flatpak-name> /usr/bin/<custom-name>
```

For example for Steam:

```sh
ln -s /var/lib/flatpak/exports/bin/com.valvesoftware.Steam /usr/bin/steam
```

Flatpak-packaged applications can now be found by application launchers and the
terminal, as they are added to the `$PATH` variable.

## See also
* The [Gentoo article](https://wiki.gentoo.org/wiki/Flatpak) about Flatpak.
