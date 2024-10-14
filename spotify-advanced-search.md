---
title: "Spotify Advanced Search"
description: "Narrow down Spotify search results with search tags"
isPublic: true
---

[Spotify](https://www.spotify.com) allows for advanced search (like Google)
to narrow down results. For example, if you only want to search for music that
is released by [CircoLoco Records](https://circolocorecords.com/) enter the
following in the Spotify search bar:

```
label:"CircoLoco Records"
```

It is possible to narrow results down even further by combining search tags:

```
label:"CircoLoco Records" artist:"Mochakk"
```

Quotes around the values are only required when the value contains multiple
words.

## All search tags

| Search tag | Example      | Description                                            |
|------------|--------------|--------------------------------------------------------|
| `year:`    | year:1969    | Displays music from a particular year.                 |
| `genre:`   | genre:rock   | Displays music in the genre matching keyword.          |
| `label:`   | label:domino | Displays music released by the label matching keyword. |
| `track:`   | track:summer | Displays tracks matching keyword.                      |
| `album:`   | album:love   | Displays albums matching keyword.                      |
| `artist:`  | artist:john  | Displays artists matching keyword.                     |
| `tag:`     | tag:new      | Displays hits released in the last two weeks.          |

## See also

* The [Spotify documentation](https://support.spotify.com/us/article/search/)
  about the search feature.
