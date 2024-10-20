---
title: "Git Identities"
description: "Managing multiple Git identities on one system"
isPublic: true
dateCreated: "07-02-2024"
dateLastModified: "14-10-2024"
---

When having a personal and a work identity for [Git](git) there is additional
configuration required to let Git know when to use which identity.

Sometimes it is desired to overwrite the default [gitconfig](gitconfig).
This can be done by creating another `.gitconfig` configuration anywhere, and
referencing it in the main `~/.gitconfig` file. The `includeIf` option is used
to specify when a `.gitconfig` file should be active:

```ini
[includeIf "gitdir:~/work/"]
    path = ~/.gitconfig-work
```

It is important to always end the `gitdir` path with a forward slash `/`,
otherwise it will not work!

This specifies that the `~/.gitconfig-work` configuration should be used when
inside a Git repository anywhere under the `~/work/` directory. The
`~/.gitconfig-work` can have a different name (`user.name`) and email address
(`user.email`) for professional use.

Note that the config only applies when inside a Git project (a directory with a
`.git` directory inside). To validate if the configuration is correct, navigate
to an Git project anywhere under the `~/work/` directory and run the following
command:

```sh
git config user.name && git config user.email
```

These commands show the current `user.name` and `user.email` used when creating
new commits in the repository.
