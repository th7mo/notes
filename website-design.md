---
title: "Website design"
description: "Design choices that made the th7mo.com website what it is today"
isPublic: true
---

## No Table Of Contents (TOC)

I chose to *not* include a Table Of Contents at the start of each note. This is
because I want to keep my notes [atomic](atomic). If the note is long enough
to deserve a Table Of Contents, it is probably covering multiple topics and
could be split up into separate notes.

## No website versions

Although I think [semantic versioning](semantic-versioning) is great to keep
track of changes in a project, I chose to *not* keep track of versions for
[th7mo.com](https://th7mo.com). I am the only one maintaining and developing
the website. Versioning changes made to the website is not useful to anyone.

## No JavaScript

This website is only for reading content and nothing more. I try to keep the
website simplistic, lightweight and optimized for its purpose: serving
read-only content. I use [Astro](astro) to convert [Markdown](markdown) files
to static, plain HTML and [CSS](css).

## Not tagging notes

Tagging notes can be a great and flexible system for adding metadata to notes.
However, I chose not to implement it for my collection because I believe the
pros don't outweigh the cons. This decision keeps complexity out of the website.

## Not nesting notes

All the notes are on the same root level. Categorizing the notes would be a
waste of time because the notes have a complex relationship with each other
that could be restricted by categorizing them into directories.

## Content as a submodule

The content for the website is tracked in a different [Git](git) repository as
the website. I have two views for the content, one in [Obsidian](obsidian) and
one is the website. In the future I might add even more or change existing ones.
I can edit my notes without knowing the implementation details for presenting
the content.

## Fonts

The website does not use custom web fonts, except for monospaced text. Web fonts
are designed to be readable to the wider audience and works perfectly fine. I
chose to have a custom monospaced font to make code blocks more readable on
mobile. [sustainable.dev](https://the-sustainable.dev/do-you-really-need-that-custom-webfont/)
explains this in more detail.
