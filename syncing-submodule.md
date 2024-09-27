---
title: "Syncing submodule"
description: "Using GitHub Actions to automatically sync submodule commits"
isPublic: true
---

It is possible to automatically update [submodules](submodule) using GitHub
Actions. This can be achieved by adding a workflow to the submodule with the
following lines:

```yml
name: Send submodule updates to parent repo

on:
  push:
    branches: 
      - main

jobs:
  update:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4
        with: 
          repository: <user-name>/<repo-name>
          token: ${{ secrets.PRIVATE_TOKEN_GITHUB }}
          submodules: true

      - name: Pull & update submodules recursively
        run: |
          git submodule update --init --recursive
          git submodule update --recursive --remote

      - name: Commit
        run: |
          git config user.email "actions@github.com"
          git config user.name "GitHub Actions - update submodules"
          git add --all
          git commit -m "Update submodules" || echo "No changes to commit"
          git push
```

Before this works a few things are required:

* Replace `<user-name>` and `<repo-name>` with the correct values.
* Create a Personal Access Token with write rights to the *parent* repository.
* Create a repository secret for the *submodule* repository with the name
  `PRIVATE_TOKEN_GITHUB` with the Personal Access Token as its value.
