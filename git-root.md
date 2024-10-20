---
title: "Git Root"
description: "Alias for Git root path"
isPublic: true
dateCreated: "20-02-2024"
dateLastModified: "19-09-2024"
---

The following [gitconfig](gitconfig) configuration can be used to quickly show
the Git root path of the current repository using an [alias](alias):

```ini
[alias]
    root = rev-parse --show-toplevel
```

Now when executing `git root` the path of the root of the current Git repository
will be listed. This can be used in combination with the `cd` command to create
a [Bash](bash) alias to quickly navigate to the root directory:

```bash
alias cgr = cd $(git root) 
```
