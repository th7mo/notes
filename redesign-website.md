---
title: "Redesign Website"
description: "Rethink how I want to store my digital life"
isPublic: true
dateCreated: "19-10-2024"
dateLastModified: "22-10-2024"
---

The program needs to be a wiki engine. This note explains how the engine is
going to work and which requirements it has.

## Why

* [th7mo.com](https://th7mo.com) is my creative space. It would be nice to try
  something creative and unique. 
* More flexibility and control over the generating and validating process.
* No dependencies. *"This code sucks but at least it's mine"*.

## Requirements

* Convert [Markdown](markdown) files into HTML files.
* Check if every Markdown file has [YAML front matter](yaml-front-matter).
* Make use of a contract to ensure every content source file has correct front 
  matter.
* Allow for interactivity. I might want to implement a sub-program for managing
  my [track collection](track-collection) which needs interactivity to function.
* Every component needs to do only one thing, and it needs to do it well. 

### Front matter

I am not sure whether I want to use Markdown files or front matter, but if I do,
these are the requirements for front matter:

* Every file must have the following attributes:
  [`title`, `description`, `isPublic`, `dateCreated`, `dateLastModified`].
* The attribute `title` and `description` must not end with a period.
* Every word in the `title` attribute should be capitalized.
* The `dateCreated` and `dateLastModified` should be in the same format.
* The `dateLastModified` should only be updated when *visible* text is modified
  (formatting, indenting or stuff in the front matter do not count as visibile
  text changes).

### Links

* Links that go to an external website need an external link icon or arrow
  Unicode character behind the link name.
* Links that go to an external website need to open in a new browser tab
  (`target="_blank"`).
* Footnote links need to be enclosed by [ square brackets ].
* Links to pages that do not exist (yet) need to be removed and replaced by
  regular text.
* Links to pages that do not exist (yet) need to be logged at info level.
* Links need to be bold.
* Links can't have anything but plain text inside them (no `<code>`, `<kbd>`,
  `<b>`, `<strong>`, `<i>`, `<em>` elements).
* Links inside a `<p>` tag need a text-decoration of `underline`.
