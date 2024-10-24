---
title: "Note Formatting"
description: "Rules for formatting each Markdown note"
isPublic: true
dateCreated: "14-10-2024"
dateLastModified: "16-10-2024"
---

Some rules to make the formatting of notes somewhat consistent.

## Front matter

Each [Markdown](markdown) note must at least have the `title` attribute in the
[YAML front matter](yaml-front-matter):

```md
---
title: "<title>"
---
```

* Always start each word of `<title>` with a capital letter.

The language of the note can be indicated with the `lang` attribute:

```md
---
title: "Note Formatting"
lang:  en
---
```

There should be an empty line between the front matter and the main content:

```md
---
title: "Note Formatting"
---

## Front matter
```

The `description` attribute is optional and should start with a capital letter
and should not end with a period.

## Headings

Each [Markdown heading](markdown#headings) should have an empty line before and
after. Every heading should start with a capital letter. Always start with a
level 2 heading (level 1 heading is reserved for the title) and never increase
level indenting by more than one.

```md
Closing of the previous paragraph.

## New heading

Here starts the new paragraph.
```

## Footnotes

Define a footnote as close to the first reference of that footnote:

```md
This is an real footnote[^1].

[^1]: Always define the footnote as close as possible.
```

## File name

Use the kebab-case naming convention for naming Markdown files. Use the `.md`
file extension for Markdown instead of `.markdown`:

```
note-formatting.md
```

Leave special symbols (like `!@#$%^&*()"'[]{}-_=+\|<>?/`) in the frontmatter
`title` out the file name.

## Variables

Use the rules described in [CLI documentation](cli-documentation) for specifying
and referencing optional and required variables.
