---
title: "Font subsetting"
description: "Only keep useful subsets of fonts to reduce shipping size"
isPublic: true
---

Fonts usually have a lot of characters that are never used. To reduce the size
of a font file it is possible to only keep the subsets that are used. A tool
that can do this is [transfonter](https://transfonter.org/). Upload a font and
select subsets from the dropdown menu, or give a specific Unicode range
(`0021-007E` is all the ASCII characters without the special characters at the
start).

## See also

* An article about subsetting at [sustainable.dev](https://the-sustainable.dev/a-guide-to-subsetting-fonts/)
