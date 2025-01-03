---
title: "Stow"
description: "A symlink farm manager for managing dotfiles"
isPublic: true
dateCreated: "07-02-2024"
dateLastModified: "24-10-2024"
---

[GNU Stow](https://www.gnu.org/software/stow/) is a utility that simplifies
the process of making [symbolic links](symbolic-link). It can be used to easily
manage [dotfiles](dotfiles).

## Installation

Install Stow by executing the following command:

```sh
sudo apt install stow
```

## Usage

Mirror what the [home directory](home-directory) structure should be exactly
inside the `~/dotfiles/` directory, because Stow will make symbolic links in
directories following the same hierarchy. The name of the Stow directory can be
anything, but here the name `dotfiles` will be used.

For example: [Helix](helix) wants a `config.toml` file located at `~/.config/
helix/config.toml`. If the `config.toml` file is located at `~/dotfiles/.config/
helix/config.toml`, Stow will create a symbolic link to where Helix wants to
read the configuration file.

To create symbolic links for all the files in the `~/dotfiles/` directory to the
home directory, execute the following command:

```sh
stow ~/dotfiles/
```

Or in the repository **at root level**:

```sh
stow .
```

Be careful with where to execute Stow commands. Only execute `stow .` **at the
root** of the repository, otherwise the symbolic links will be incorrect. Also
be careful when removing symbolic links and make sure to have a backup of the
original configuration files (dotfiles).

## Ignoring files

By default, Stow creates symbolic links for every file in the directory, which
isn't always desired. Typically, the dotfiles directory is also a [Git](git)
repository that contains a `.git/` directory and a `.gitignore` file, both of
which don’t need symbolic links. To address this, Stow can be configured with
a `.stow-local-ignore` file, where you can specify the files that should be
ignored by Stow.

```gitignore
\.git
\.gitignore
^/README.*
```
