---
title: "Burning ISO"
description: "Burning an ISO image to a USB device"
---

The `dd` command can be used to burn an ISO image to a USB device:

```sh
sudo dd if={ISO-path} of={USB-device-name} bs=4M status=progress && sync
```
* `{usb-device-name}` is usually something like `/dev/sdb`
* `bs=4M` sets the block size to 4 megabytes, which can speed up the writing progress significantly
* `status=progress` displays progress information while `dd` is executing
* The trailing `sync` command ensures that all data is written to the USB
  before the command exists.
