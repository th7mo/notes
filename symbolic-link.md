---
title: "Symbolic Link"
description: "A file that points to another resource"
isPublic: true
dateCreated: "07-02-2024"
dateLastModified: "16-10-2024"
---

A symbolic link, often called a 'symlink', is a file that serves as a reference/
pointer to another file or directory.

With [Unix](unix)-based systems the `ln` (link) command with the `-s` or
`--symbolic` flag can be used to create symbolic link:

```sh
ln -s <target-path> <link-path>
```

* `<target-path>` is the path to the file or directory to link to.
* `<link-path>` the desired path for the (new) symbolic link.
