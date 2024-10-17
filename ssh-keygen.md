---
title: "ssh-keygen"
description: "A command line tool for creating SSH keys"
isPublic: true
dateCreated: "07-02-2024"
dateLastModified: "16-10-2024"
---

`ssh-keygen` is a command line tool to create [SSH keys](ssh-key). To generate a
new SSH key execute the following command:

```sh
ssh-keygen -t ed25519 [-C <email-address>]
```

* The `-t` flag specifies the type of key to generate.
* The `-C` flag adds a comment to the SSH key. This flag is optional
  but recommended. It will help indicate which SSH key belongs to which
  email address when using `ssh-add -l` or
  [Keychain](keychain#list-loaded-ssh-keys).
* `<email-address>` is the email address used for GitHub or Bitbucket,
  configured as `user.email` in the [gitconfig](gitconfig) file.

When prompted to "Enter a file in which to save the key", press <kbd>Enter</kbd>
to accept the default file location. Otherwise, if a different name or located
is desired, a custom name can be specified. The default directory for storing
SSH keys is `~/.ssh/`. Press <kbd>Enter</kbd> until the file is generated.
