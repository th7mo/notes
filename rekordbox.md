---
title: "Rekordbox"
description: "DJ Software for Pioneer DJ"
isPublic: true
---

[Rekordbox](https://rekordbox.com) is popular DJ software used by Pioneer DJ
hardware.

## Mixing in key
[WIP: Explain how to set alphanumeric keys in rekordbox]
[WIP: Explain how alphanumeric keys work in different note]

## USB drive format
It is recommended to format USB drives to FAT32. This format is preferred
because the most DJ equipment is compatible with FAT32. The Disk Management
inside Windows can't format disks larger than 32 GB to FAT32. To work around
this open PowerShell with administrator access and execute the following
command:

```ps
format /FS:FAT32 {disk-label}
```

* `{disk-label}` is the letter and `:` of the disk (example: `D:`)

Alternatively [guiformat](http://ridgecrop.co.uk/index.htm?guiformat.htm) can be
used to format disks larger than 32 GB to FAT32. I've had more success with this
tool than with the PowerShell workaround.

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
