---
title: "Note Formatting"
description: "Rules for formatting each Markdown note"
isPublic: true
---

## Front matter

Each [Markdown](markdown) note must at least have the following field in the
[YAML front matter](yaml-front-matter):

```md
---
title: "{title-name}"
---
```

Whenever a note is not in English must be indicated with the `lang` attribute:

```md
---
title: "Note Formatting"
lang: nl  // [!code highlight]
---
```

## Headings

Each [Markdown heading](markdown#headings) should have an empty line before and
after. Every heading should start with a capital letter. Always start with a
level 2 heading (level 1 heading is reserved for the title)
