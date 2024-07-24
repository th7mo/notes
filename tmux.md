---
title: "tmux"
description: "An open source terminal multiplexer"
isPublic: true
---

[Tmux](https://github.com/tmux/tmux) is a terminal multiplexer. It is used to
manage terminal windows and sessions.

## Installation
Tmux can be installed by executing the following command:

```sh
sudo apt install tmux
```

## Configuration
Tmux can be configured in the `~/.tmux.conf` file. It is recommended to keep
the configuration file inside the [dotfiles](dotfiles) repository to keep
configuration backed up.

Tmux can be launched when starting a terminal application by `exec tmux` inside
the [Bash](bash) or [Zsh](zsh) configuration file.

The tmux configuration can be reloaded by executing the following command inside
tmux:

```
source-file ~/.tmux.conf
```

## Name capitalization
The tmux developers chose to not capitalize the 't' of tmux, so tmux should be
written all lowercase.
