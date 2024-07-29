---
title: "Pandoc"
description: "A universal document converter"
isPublic: true
---

[Pandoc](https://pandoc.org/) is a command line tool for converting files from
one format to another. A popular conversion is the conversion from
[Markdown](markdown) to PDF format. Pandoc has its own flavored Markdown syntax
and ignores HTML inside Markdown files when generating PDF files from Markdown.

```sh
pandoc -s input.md -o output.pdf
```

## Installation
Install Pandoc on Debian by executing the following terminal command:

```sh
sudo apt install pandoc
```

Pandoc requires an engine for converting Markdown files to PDF, so also install
the `texlive-full` package:

```sh
sudo apt install texlive-full
```

## Templates
When converting Markdown files to PDF it is possible to provide a `.tex`
template. With a template the generated PDF can be styled and customized.


