---
title: "Hot Cues"
description: "How I use Memory Cues and Hot Cues while DJ'ing"
isPublic: true
dateCreated: "23-10-2024"
dateLastModified: "04-11-2024"
---

| Cue Point    | Function                                     | Aligns with  |
|--------------|----------------------------------------------|--------------|
| Memory Cue 1 | Track should mix in                          | Memory Cue 3 |
| Memory Cue 2 | Other track should be mixed out              | Memory Cue 4 |
| Memory Cue 3 | Other track should mix in                    | Memory Cue 1 |
| Memory Cue 4 | Track should be mixed out                    | Memory Cue 2 |
| Memory Cue 5 | Place to skip to Hot Cue C                   |              |
| Hot Cue C    | Skip part between Memory Cue 5 and Hot Cue C |              |
| Hot Cue A    | Bass of track should be on                   | Hot Cue B    |
| Hot Cue B    | Bass of track should be off                  | Hot Cue A    |

Memory Cues are chosen because older DJ equipment only has three Hot Cue
buttons, and with this convention Hot Cue A and B can be used for creative
purposes, and Hot Cue C can be used to skip a part of the track.

## Skip part of the track

Memory Cue 5 are actually two Memory Cues (5A and 5B) right after each other. In
the example below is visible that two Memory Cues (`V`) are on bar 1.3 and 1.4.
Between beat 3 and 4 of the first bar Hot Cue C can be pressed to skip to Hot
Cue C:

```
            V   V               C 
[...|...|...|...|...|...|...|...|...|...|...|...]
```

With this convention a [track transition](transitions) looks like this:

```cs
Track 1: <---M5-------C---M3---B---M4--------
Track 2:          --------M1---A---M2---M5-------C---M3---B---M4---
Track 3:                                         ----M1---A---M2------->
```

* The new track is audible at point `M1-M3`.
* The bass-swap is done at point `AB`.
* The old track is mixed out at point `M2-M4`.
* When the track reaches point M5, Hot Cue C can be pressed to skip part `M5<-->C`.

It is possible that two Hot Cues are at the exact same place. In this scenario
it is sufficient to leave the least important one out (Hot Cue A, B and C have
priority over the other Hot Cues).
