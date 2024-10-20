---
title: "Rustify Website"
description: "Rewriting th7mo.com in Rust"
isPublic: true
dateCreated: "19-10-2024"
dateLastModified: "19-10-2024"
---

The Rust program needs to be a wiki engine. This note explains how the engine
is going to work and which requirements it has.

## Why

* [th7mo.com](https://th7mo.com) is my creative space. It would be nice to try
  something creative and unique. 
* More flexibility and control over the generating and validating process.
* No dependencies. *"This code sucks but at least it's mine"*.
* Practice with Rust.

## Requirements

* Convert [Markdown](markdown) files into HTML files.
* Check if every Markdown file has [YAML front matter](yaml-front-matter).
* Make use of a contract to ensure every content source file has correct front 
  matter.
* Allow for interactivity. I might want to implement a sub-program for managing
  my [track collection](track-collection) which needs interactivity to function.
* Every component needs to do only one thing, and it needs to do it well. 

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
