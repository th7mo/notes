---
title: "Commit"
description: "A snapshot of the repository's currently staged changes"
isPublic: true
dateCreated: "07-02-2024"
dateLastModified: "16-10-2024"
---

A commit is a snapshot of a [Git](git) repository. Commits should be short,
ideally representing an [atomic](atomic) change.

## Commit message

A common convention for formatting commit messages is as follows:

```git-commit
<prefix>: <summary>

[additional-explanation]
```

A commit message should start with a concise `<summary>` and can optionally
include a more detailed `[additional-explanation]` after a blank line. Instead
of focusing on *what* was done, it’s more useful to explain *why* the changes
were made in the `<summary>`.

To categorize commits a `<prefix>` can be used. A good convention to use is
[conventional commits](https://www.conventionalcommits.org). The
[commitlint project](https://github.com/conventional-changelog/commitlint)
expands on this and adds more categories. Use the following prefixes for commit
message titles:

| Prefix   | Category                                                            |
|----------|---------------------------------------------------------------------|
| `feat`   | New functionality                                                   |
| `fix`    | Reworking existing code to solve bugs                               |
| `refact` | Refactoring code                                                    |
| `docs`   | Adding documentation                                                |
| `test`   | Adding or fixing tests                                              |
| `bump`   | Incrementing [version numbers](semantic-versioning) of dependencies |

It is important to not introduce to many prefix categories. This will defeat the
purpose if categorizing commits.

### Emoji's

Do not use emoji's in commit messages like
[the gitmojiproject](https://gitmoji.dev/) tries to achieve. Emojis do not
provide any benefit to the commit message. There are still a lot of tools that
lack proper emoji support. It is also way more difficult to filter or search
commit messages when they use emojis for categorizing commits.

## Undo commits

It might be desired sometimes to undo changes made by one or multiple commits.
Prefer [reverting](revert) over [resetting](reset) commits to preserve the Git
history.

## See also
* A [Medium article](https://medium.com/neudesic-innovation/conventional-commits-a-better-way-78d6785c2e08)
  that explains the most common commit prefixes.
* A [GitHub gist](https://gist.github.com/qoomon/5dfcdf8eec66a051ecd85625518cfd13)
  about conventional commit messages.
