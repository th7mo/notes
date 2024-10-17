---
title: "Alias"
description: "A shortcut for Git commands"
isPublic: true
dateCreated: "19-09-2024"
dateLastModified: "07-10-2024"
---

A [Git](git) alias is a shortcut for a Git command. Git aliases are configured
in [gitconfig](gitconfig) files under the `[alias]` section. To make an alias
for the `git push` command the following can be configured:

```ini
[alias]
    p = push
```

Now the command `git p` will behave the same as `git push`.
