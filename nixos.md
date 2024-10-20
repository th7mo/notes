---
title: "NixOS"
description: "Declarative builds and deployments"
isPublic: true
dateCreated: "20-10-2024"
dateLastModified: "20-10-2024"
---

[NixOS](https://nixos.org/) is a Linux distribution that has the main focus on
reproducibility. The entire system configuration is done with two main files:

* `/etc/nixos/configuration.nix`
* `/etc/nixos/hardware-configuration.nix`

## Searching for options in the configuration file

First open the manual with `man` command:

```sh
man configuration.nix
```

Then type a forward slash `/` and a search term to search for options containing
that term:

```sh
/bluetooth
```

The example above shows all configuration settings containing the word
"bluetooth".

## Installing packages

Packages can be searched at [search.nixos.org](https://search.nixos.org/packages).
List all the packages in the `configuration.nix` file the following subsection:

```nix
environment.systemPackages = with pkgs; [
    helix
    firefox
    spotify
]
```

**Never use `nix-env`; this destroys the entire philosophy of NixOS.**

## Rebuilding the system

After all configuration changes are made the system can implement these changes
by executing the following command:

```sh
sudo nixos-rebuild switch
```

After running this command the system is updated and the new configuration
settings are set (this includes installing new packages).
