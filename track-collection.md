---
title: "Track collection"
description: "How I want to preserve my track collection with platform independence"
isPublic: true
---

I am not satisfied with my fragmented music library. I (think I) want a
text-based solution that stores the information about my music library. This
track collection would be the Single Version of the Truth (SVOT). This
text-based solution would also be a [Git](git) repository to keep track of
changes.

```yaml
Album:
    title: string
    type: ["SINGLE", "EP", "ALBUM"]
    record-label: string
    tracks: Track[]
Track:
    title: string
    artists: string[]
    tags: string[]
```

Example:

```json
{
    "title": "Synergy",
    "type": "EP",
    "record-label": "Up The Stuss",
    "tracks": [
        {
            "title": "Pumpin'",
            "artists": ["Across Boundaries", "Chris Stussy", "Locklead"],
            "tags": ["tech-house", "electronic"]
        }
    ]
}
```

## Things to work out

* Which applications are consumers of this track collection?
    * [Spotify](https://www.spotify.com)?
    * [th7mo.com](https://th7mo.com)?
    * A program that will automatically compose a search string?
      (`{Track.title} - {Track.artists[0]}`)?
    * A program that will write metadata to my audio files
      (`.wav`, `.flac`, etc.)?
* Do I even need a primary key?
    * If I do, would it be a UUID or a combination of `Track.title` and
      `Track.artists` (or even a combination of a UUID and the `Track.title`
      and `Track.artists` to make UUID's human friendly)
* Do I want to store it in JSON or another text-based format?
* Do I want duplicate fields (`Track.recordLabel` and `Album.recordLabel`)?
* What would the workflow for adding new tracks look like?
* If multiple source conflict with naming (Spotify,
  [Beatport](https://www.beatport.com), [SoundCloud](https://soundcloud.com)),
  which source do I pick for making a decision?
* Which properties do I think are important enough to keep track of?
* How do I deal with extended or radio edits?
    * Do I want to store multiple edits of the same track or choose a default
      and stick with it?
* Do I want to make a distinction between released and unreleased tracks?
    * Are unreleased tracks part of an unreleased album? If they are, should
      `Album.title` be equal to `Track.title`?
    * What would the workflow look like if a track that was previously
      unreleased but already stored becomes released?
