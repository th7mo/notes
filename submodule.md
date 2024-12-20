---
title: "Submodule"
description: "Git repostitories as a dependency"
isPublic: true
dateCreated: "20-02-2024"
dateLastModified: "16-10-2024"
---

A [Git](git) submodule is a repository inside another repository. This can be
used if a project has a dependency on another repository. This might be the
case if it is desired to have multiple websites that render the same content
differently.

A submodule directory is like any other repository. This means that all files of
the submodule directory exist on a file-system and are managed by Git.

Create a submodule with the `git submodule` command:

```sh
git submodule add <repostitory-url> <path-name>
```

This command will create a `.gitmodules` configuration file in the root
directory of the project. This file lists all the submodules in the current
project. The command also creates a path in the `.git/<path_name>` directory. As
last this command clones the dependency repository at `<path-name>`.

If a change is made in the submodule repository, the dependent repository can
include that change by rebasing the new [commit](commit) in the local instance
of the submodule and making a new commit afterward.

First navigate to the submodule and check if new changes are made:

```sh
cd <submodule-path>
git fetch
```

Then [rebase](rebase) the changes on top of the local [branch](branch):

```sh
git rebase origin/main
```

After rebasing make a commit in the dependent repository[^1]:

[^1]: See the [git root](git-root) command for how to quickly navigate to the
root of the current repository.

```sh
cd ..
cd $(git root)
git commit -m "<commit-message>"
git push origin main
```

It might be a good idea to make all these commands into a single alias to
quickly fetch the remote, rebase the new changes and commit the commit hash
reference to a new hash. The `package.json` configuration can be used to create
a new custom `script` like `npm run update`. With this strategy it should never
be needed to modify any code in the submodule.

## Syncing submodules
See [syncing submodule](syncing-submodule) for how to automatically sync
submodule commits to the parent repository.
