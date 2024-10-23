---
title: "Hot Cues"
description: "How I use Hot Cues when DJ'ing"
isPublic: true
dateCreated: "23-10-2024"
dateLastModified: "23-10-2024"
---

* A: Track should mix in             (aligns with Hot Cue C)
* B: Other track should be mixed out (aligns with Hot Cue D)
* C: Other track should mix in       (aligns with Hot Cue A)
* D: Track should be mixed out       (aligns with Hot Cue B)
* E: Place to skip to Hot Cue F
* F: Skip part between Hot Cue E and Hot Cue F
* G: Bass of track should be on      (aligns with Hot Cue H)
* H: Bass of track should be off     (aligns with Hot Cue G)

This order is chosen because older DJ equipment only has three Hot Cue buttons,
and here Hot Cue A, B and C are the most important ones.

A typical [track transition](transitions) looks like this:

```cs
Track 1: <---E-------F---C---H---D--------
Track 2:         --------A---G---B---E-------F---C---H---D---
Track 3:                                     ----A---G---B------->
```

* The new track is audible at point `AC`.
* The bass-swap is done at point `GH`.
* The old track is mixed out at point `BD`.
* When the track reaches point E, Hot Cue F can be clicked to skip part E<-->F.

It is possible that two Hot Cues are at the exact same place. In this scenario
it is sufficient to leave the least important one out (Hot Cue A, B and C have
priority over the other Hot Cues).
