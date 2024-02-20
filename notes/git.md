---
title: "Git"
description: "A popular distributed version control system"
---

[Git](https://git-scm.com/) is a version control system.
It is used for the [digital garden](digital-garden)
to keep track of changes and preserve history.
It also allows for accessible collaboration.
Install Git by executing the following command:

```sh
sudo apt install git
```

## Configuration
All the configuration for Git is stored in [gitconfig](gitconfig) files.
See [git identities](git-identities) for how to configure multiple Git identities.

## Usage
A [commit](commit) creates a snapshot of the current state of a Git repository.
Git uses [branches](branch) for collaborate work and diverging from the default environment.
[Worktrees](worktree) can be used to switch between branches without committing or stashing changes.

## Pull request
The [rebase](rebase) strategy is also a good option for pull requests.
Do not [squash](squash) commits or merge a pull request using the squash strategy,
unless the commit messages are not providing any useful information.
It is always better to leave as much history as possible for later debugging of code.

## See also
* A [Reddit thread](https://www.reddit.com/r/git/comments/wwapum/comment/ilkdpzv/) about worktrees.
* A [Medium article](https://medium.com/ngconf/git-worktrees-in-use-f4e516512feb) about worktrees.
* The [Git documentation](https://git-scm.com/docs/git-worktree) about worktrees.
