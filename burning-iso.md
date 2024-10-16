---
title: "Burning ISO"
description: "Burning an ISO image to a USB drive on Linux"
isPublic: true
---

The command-line utility `dd` for Linux can be used to burn an ISO image to a
USB drive:

```sh
sudo dd if=<ISO-path> of=<USB-drive-name> bs=4M status=progress && sync
```

* `<USB-drive-name>` is usually something like `/dev/sdb`.
* `bs=4M` sets the block size to 4 megabytes, which can speed up the writing
   progress significantly.
* `status=progress` displays progress information while `dd` is executing.
* The trailing `sync` command ensures that all data is written to the USB drive
  before the command exits.
