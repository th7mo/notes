---
title: "Rekordbox"
description: "Professional DJ Software for Pioneer DJ equipment"
isPublic: true
---

[Rekordbox](https://rekordbox.com) is popular DJ software used by Pioneer DJ
hardware[^1].

[^1]: This note is written for rekordbox [version number](semantic-versioning) `7.0.z`.

## Mixing in key
* [WIP: Explain how to set alphanumeric keys in rekordbox]
* [WIP: Explain how alphanumeric keys work in different note]

## Export mode
Rekordbox has performance mode and export mode. Performance mode is for live
mixing and export mode is for preparing tracks, playlists and sets. Put tracks
in a playlist and click the sync manager button in the left bottom of the
screen. In the new popup dialog playlists can be selected and exported to the
desired USB drive. If it is the first time export mode is being used, check the
checkbox 'Synchronize Playlists With a Device' in the right top of the dialog.

To sync changes made with the DJ equipment (like new hot ques) click the 'Cue
Grid Info' arrow pointing towards the 'Rekordbox' column.

Always properly eject the USB drive when finished with exporting to the USB
drive because the data in the drive might corrupt if abruptly detached. To eject
the USB drive go to 'Devices' in the file overview on the left bottom and click
the 'Eject' icon.

### Device Library (Plus)
Rekordbox introduced Device Library Plus in version `6.8.1`. Pioneer DJ will use
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
format /FS:FAT32 {disk-label}
```

* `{disk-label}` is the letter and `:` of the disk (example: `D:`)

## Personal preferences
### View > Display Type
* **Coloring of played tracks**:
  * `[YES]` Reset color when exiting rekordbox
* **Key display format**:
  Alphanumeric
* **Waveform Drawing Rate**:
  High Speed
* **Full/Preview Waveform**:
  Half Waveform
* **Beat Count Display**:
  Current Position (Bars)
* **Switch JOG Display**:
  Current CUE/SLIP

### View > Layout
* **Effect Panel**:
  BEAT FX + SOUND COLOR FX
* **Enlarged Waveform**:
  Auto

### View > Color
* **Waveform color**:
  3Band

### Audio > Configuration
* **Audio**:
  (DDJ-400)
* **Sample Rate**:
  44100Hz
* **Buffer size**:
  256 samples (5.8ms)
* **Volume**:
  Middle

### Controller > Deck
* **Eject/Load Lock**:
  Lock
* **Needle Lock**:
  Lock
* **Memory Cue Call Lock**:
  Lock
* **Load**:
  * `[YES]` Playback starts at Memory/Hot Cue nearest to the beginning of the track
  * `[YES]` Instant Doubles
* **JOG Rotation Speed**:
  33rpm

### Controller > Mixer
* **Auto Gain**:
  * `[YES]` Enable
* **EQ/ISOLATOR**:
  ISOLATOR
* **EQ Type**:
  DJM-900NXS2
* **Channel Fader Curve**:
  Linear Curve
