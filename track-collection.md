---
title: "Track Collection"
description: "How I want to preserve my track collection with platform independence"
isPublic: true
dateCreated: "12-10-2024"
dateLastModified: "22-10-2024"
---

I am not satisfied with my fragmented music library. I (think I) want a
text-based solution that stores the information about my music library. This
track collection would be the Single Version of the Truth (SVOT). This
text-based solution would also be a [Git](git) repository to keep track of
changes.

## Format

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
    additional-note?: string
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
            "tags": ["tech-house", "electronic", "closer"],
            "additional-note": "This track has some very high pitched noises at the end"
        }
    ]
}
```

## Consumers

This track collection needs to work with different applications:

**Nicotine+**: I need to be able to select a track and get a formatted string
to paste in the Nicotine+ search bar. The format is
`<Track.artists[0]> <Track.title>`. This will probably not work all the time
since the first artist on a track is not always the one listed in Nicotine+.

**Spotify**: My main streaming platform is Spotify, and I think it is not going
to change anytime soon. This is because I switched a lot in the past, and came
back to Spotify because most people use it. It is a better platform to share
playlists with others and find new music through other peoples playlists. The
playlist part needs to sync with Spotify so when I update the track collection
the Spotify playlist reflects those new changes.

**th7mo.com**: The website is going to implement a view for the track
collection. I need a fuzzy finding implementation and a flexible way to view all
tracks.

**Unknown**: For [DJ'ing](gigs) I have local audio files (`.wav`, `.flac`,
`.aiff`, `.mp3`). These audio files need to have the correct metadata (in 
[rekordbox](rekordbox)). This program needs to write the correct metadata to
those local audio files.

## Things to work out

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
