---
title: "Markdown"
description: "The human-friendly markup language"
isPublic: true
---

[Markdown](https://en.wikipedia.org/wiki/Markdown) is a markup language that
uses plain text formatting to write structured documents. Markdown provides
universal readability, regardless of platform or tooling. Markdown also allows
easy history tracking, collaboration and reviewing with [Git](git). The Markdown
format is very established and is not sensitive to major technological shifts.

## Syntax

Markdown uses reserved symbols to mark the styling of text or give text a
special meaning.

### Headings

Markdown allows a non-hierarchical structure of headings. It is recommended
however to start with a level one heading and only increment it with a maximum
of one when introducing a subheading.

Prefix a line with a hash `#` symbol to make it a heading. The amount of
hashes defines the heading level. It is recommended to not number the headings
manually:

```md
# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6
```

It is good practice (but not required) to have an empty line before a heading.

### Text styling

* Surround text with single asterisks `*` to make text *italic*.
* Surround text with double asterisks `**` to make text **bold**.
* Surround text with double tildes `~~` to make text ~~strike-through~~.

### Lists

Prefix a list item with the asterisk `*` to make it an unordered list item:

```md
* item
* item
* item
```

Alternatively an unordered list can be made using the hyphen `-` or addition
`+` symbol. The asterisk `*` is preferred because it looks the most like a real
bullet point. Using an addition `+` symbol is discouraged because it takes more
effort to type on most keyboards and is not an intuitive symbol.

Prefix a list item with a number and a period to make it an ordered list item:

```md
1. item
2. item
3. item
```

It is also possible to create a numbered list with only the prefix `1.`:

```md
1. item
1. item
1. item
```

Introduce multiple levels by indenting with 4 spaces or a single <kbd>Tab</kbd>:

```md
1. item
    1. ordered sub-item
    1. ordered sub-item
2. item
    * unordered sub-item
    * unordered sub-item
3. item
4. item
```

Most modern renderers will correctly number the list. It is not recommended
however, because it makes it harder to read when editing the Markdown.

### Inline code and code blocks

Inline code is surrounded by single backticks:

```md
Here is some `inline code` in a sentence.
```

To create a code block surround the code between two lines with three backticks.
Add a programming language name after the first three backticks to indicate to
Markdown processors that syntax highlighting can be used for that code block:

~~~md
```javascript
public foo() {
    bar()
}
```
~~~

### Footnotes

Footnote references can be made with the following syntax:

```md
A normal sentence[^1].
```

The footnote itself has the same syntax as its reference but has a colon `:`
symbol with a trailing explanation:

```md
[^1]: Except for the trailing footnote.
```

## YAML front matter

A lot of tools depend on [YAML front matter](yaml-front-matter) for metadata
about the Markdown file.

## Exporting Markdown

Sometimes it is required to convert Markdown to other file formats like PDF or
`.docx`. The tool [Pandoc](pandoc) can be used to convert Markdown to a lot of
other file formats.

## See also

* The original [Markdown specification](https://daringfireball.net/projects/markdown/).
* The new and improved [CommonMark specification](https://commonmark.org/).
* Good recommendations for how to write Markdown [basic syntax](https://www.markdownguide.org/basic-syntax/).
