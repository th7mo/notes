---
title: "Staging Area"
description: "The place where changes are stored before they are committed"
isPublic: true
dateCreated: "04-10-2024"
dateLastModified: "16-10-2024"
---

If files inside a [Git](git) repository have changes in comparison to the
latest [commit](commit) they are not automatically added to the next commit.
Before this can be done the files with changes need to be added to the staging
area. This can be done with the following command:

```sh
git add <file-name | glob-pattern>
```
