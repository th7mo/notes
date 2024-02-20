---
title: "Submodule"
description: "Git repostitories as a dependency"
---

A [Git](git) submodule is a repository inside another repository.
This can be used if a project has a dependency on another repository.
This might be the case if it is desired to have multiple websites
that render the same content differently.

A submodule directory is like any other repository.
This means that all files of the submodule directory
exist on a file-system and are managed by Git. 

Create a submodule with the `git submodule` command:

```sh
git submodule add {repostitory-url} {path-name}
```

This command will create a `.gitmodules` configuration file in
the root directory of the project.
This file lists all the submodules in the current project.
The command also creates a path in the `.git/{path_name}` directory.
As last this command clones the dependency repository at `{path-name}`.
