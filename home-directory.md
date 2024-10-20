---
title: "Home Directory"
description: "A special directory for each user on a file-system"
isPublic: true
dateCreated: "09-02-2024"
dateLastModified: "16-10-2024"
---

The home directory of a regular user is found at `/home/{username}/`, while the
root user's home directory is located at `/root/`. In most operating systems,
when the root user creates a new user, a home directory is automatically
generated for them. This home directory typically comes equipped with default
directories:

| Directory    | Purpose                                                           |
|--------------|-------------------------------------------------------------------|
| `Desktop/`   | Files in this directory will be shown on the desktop environment  |
| `Documents/` | Storing files created/used by word processors                     |
| `Downloads/` | Downloaded files (default download location of most web-browsers) |
| `Music/`     | Audio files (`.mp3`, `.flac`, `.aiff`, `.wav`)                    |
| `Pictures/`  | Images (`.png`, `.jpg`, `.webp`, `.svg`)                          |
| `Public/`    | Files for remote access / hosting                                 |
| `Templates/` | Templates like templates for word processors                      |
| `Videos/`    | Video files (`.mp4`)                                              |

I always create the following additional directories on a fresh installation.
These directories are in lowercase letters to distinguish them from the default
directories:

| Directory  | Purpose                                                                                                                  |
|------------|--------------------------------------------------------------------------------------------------------------------------|
| `dev/`     | Personal software development files                                                                                      |
| `sandbox/` | A sandbox environment for testing purposes                                                                               |
| `work/`    | All professional work. I keep all work related projects inside this directory with a work [git identity](git-identities) |

## Shell handling

On Unix based systems the `$HOME` variable will evaluate to the home directory
of the active user. In the shell the tilde `~` character is an alias for `/home/
<active-user>`. A user can navigate to the home folder no matter the current
directory with:

```sh
cd ~
```

Executing the `cd` command without any arguments will also navigate to the
active user's home directory:

```sh
cd
```
