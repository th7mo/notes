---
title: "Rekordbox"
description: "Professional DJ Software for Pioneer DJ equipment"
isPublic: true
dateCreated: "17-07-2024"
dateLastModified: "07-11-2024"
---

[Rekordbox](https://rekordbox.com) is popular DJ software used by Pioneer DJ
hardware[^1].

[^1]: This note is written for rekordbox [version number](semantic-versioning) `7.0.<z>`.

## Mixing in key

* [WIP: Explain how to set alphanumeric keys in rekordbox]
* [WIP: Explain how alphanumeric keys work in different note]

## Export mode

Rekordbox has performance mode and export mode. Performance mode is for live
mixing and export mode is for preparing tracks, playlists and sets. Put tracks
in a playlist and click the sync manager button in the left bottom of the
screen. In the new popup dialog playlists can be selected and exported to a
desired USB drive. If it is the first time export mode is being used, check the
'Synchronize Playlists With a Device' checkbox in the right top of the popup
dialog.

To sync changes made with the DJ equipment (like new [Hot Cues](hot-cues)) click
the 'Cue Grid Info' arrow pointing towards the 'Rekordbox' column.

Always properly eject the USB drive when finished with exporting to the USB
drive because the data in the drive might corrupt if abruptly detached. To eject
the USB drive go to 'Devices' in the file overview on the left bottom and click
the 'Eject' icon. Alternatively close the Rekordbox program.

### Device Library (Plus)

Rekordbox introduced Device Library Plus in version 6.8.1. Pioneer DJ will use
the new Device Library Plus format for new devices. It is possible to export
to both Device Library and Device Library Plus format so the USB drive is
compatible with all rekordbox powered devices/equipment.

## USB drive format

It is recommended to format USB drives to FAT32. This format is preferred
because the most DJ equipment is compatible with FAT32. The Disk Management
inside Windows can't format disks larger than 32 GB to FAT32. To work around
this [guiformat](http://ridgecrop.co.uk/index.htm?guiformat.htm) can be used to
format disks larger than 32 GB to FAT32.

Alternatively open PowerShell with administrator access and execute the
following command[^2]:

[^2]: I've had more success with guiformat than with the PowerShell workaround.

```ps
format /FS:FAT32 <disk-label>
```

* `<disk-label>` is the letter and `:` of the disk (example: `D:`)

## Rekordbox preferences

[Rekordbox preferences](rekordbox-preferences) can be specified in the settings
and synced to a USB drive.
