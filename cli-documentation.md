---
title: "CLI Documentation"
description: "Conventions for documenting CLI tools"
isPublic: true
---

The standard convention for specifying required placeholder variables is to
enclose it with `<` angle brackets `>`. In the example below `<commit-hash>`
indicates that a [commit](commit) hash should be specified:

```sh
git revert <commit-hash>
```

For optional placeholder variables it is convention to enclose it with `[`
square brackets `]`:

```sh
git revert [--no-commit] <commit-hash>
```

The `[--no-commit]` part indicates that the `--no-commit` flag is optional.
