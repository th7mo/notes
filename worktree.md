---
title: "Worktree"
description: "A Git feature for checking out branches without stashing or popping changes"
isPublic: true
---

[Git](git) worktrees make [branches](branch) directories at the root of the
repository. Instead of switching branches, just switch directories.

## Make a directory
```sh
mkdir {repository-name}
```

## Clone a repository without checking out a branch
Clone the repository from inside the repository directory:

```sh
cd {repository-name}
```

After that clone the repository without worktrees: (The `--bare` flag specifies
to only clone the essential git files)

```sh
git clone --bare {git-remote-url}
```

`{git-remote-url}` can be a HTTPS or SSH URL.

## Add a worktree
Only add worktrees from the bare repository, so navigate to the bare repository:

```sh
cd {repository-name}/.git/
```

Now add a worktree to the root of the repository:

```sh
git worktree add ../{branch-name}
```

Now the directory structure should look something like this (as an example this
repository has been used):

```
digital-garden
├── digital-garden/.git/
└── main/
```

To switch to branch `main`, simply `cd main`.

## Add a worktree with a new branch
Make sure to be in the bare repository when managing worktrees:

```sh
git worktree add -b {new-branch-name} ../{worktree-name}
```

* `{branch-name}` is the name of the new branch.
* `{worktree-name}` is the name of directory (worktree).

## Add a worktree based on a remote branch
```sh
git worktree add {worktree-name} {remote-branch-name}
```

When the worktree [commit](commit) log does not line up with the
[remote](remote) commit log for that specific branch, it is probably because
`{remote-branch-name}` was not the correct remote branch name when executing the
`git worktree add` command.

## Remove a worktree
Remove worktrees from the bare repository:

```sh
cd {repository-name}/.git/
```

Remove a worktree by executing the following command:

```sh
git worktree remove {worktree-name}
```

## See also
* For a full reference to worktrees see the official [Git worktree
    documentation](https://git-scm.com/docs/git-worktree).
