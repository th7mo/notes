---
title: "Music tagging"
description: "A flexible method to manage music libraries"
isPublic: true
---

*Compose* playlists from tags. Tags are requirements for a song to be listed in
a search result. If no tags are specified all songs in the library will match
because there are no requirements. If you want to make every song require to be
tagged as `#house` listed:

```ts
#house
```

If you want to listen to elevating music which is also from the electronic
genre:

```ts
#elevating and #electronic
```

If you want to listen to music that is either elevating trance or elevating
progressive:

```ts
#elevating and (#trance or #progressive)
```

If you want all underground hip hop except slow underground hip hop, and dark
house:

```ts
((#underground and #hip-hop) and (not #slow)) or (#dark and #house)
```

## Tags
**Emotion**: `#dark` `#happy` `#euphoric`

**Genre**: `#techno` `#house` `#hip-hop` `#trance`

**Moment**: `#opener` `#closer` `#peak`
