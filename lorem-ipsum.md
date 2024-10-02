---
title: "Lorem ipsum"
description: "The sandbox page for th7mo.com"
isPublic: true
---

It is used for this website to stress-test its features in a sandbox
environment. Lorem Ipsum is placeholder text for previewing layouts.

## Inline formatting
*text with italics*

**text that is strong**

***italic and strong***

***~~italic, strong and strikethrough~~***

`inline code`

~~strikethrough~~

some<sup>sup</sup> text

some<sub>sub</sub> text.

#### Links
[External Link](https://google.com)

[internal link](git)

[section link](#lists)

footnote[^1]

double footnote[^1] [^2].

[^1]: This is an example footnote.
[^2]: This is also an example footnote.

### Long lines
pneumonoultramicroscopicsilicovolcanoconiosis
pseudopseudohypoparathyroidism floccinaucinihilipilification
antidisestablishmentarianism supercalifragilisticexpialidocious
incomprehensibilities strengths euouae unimaginatively
honorificabilitudinitatibus.

## Blockquotes
### Normal
> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
> eiusmod tempor incididunt ut labore et dolore magna aliqua.

### Multiple after eachother
> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
> eiusmod tempor incididunt ut labore et dolore magna aliqua.

> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
> eiusmod tempor incididunt ut labore et dolore magna aliqua.

### Codeblock
> The following codeblock:
>
> ```
> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
> ```

### Nested
> > Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
> > eiusmod tempor incididunt ut labore et dolore magna aliqua.

### Nested with multiple elements
> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
> eiusmod tempor incididunt ut labore et dolore magna aliqua.
>
> > Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
> > eiusmod tempor incididunt ut labore et dolore magna aliqua.

### Triple nested
> > > Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
> > > eiusmod tempor incididunt ut labore et dolore magna aliqua.

### With lists
> * level 1
>   * level 2
>     * level 3
>       * level 4
>         * level 5

## Lists
### Unordened
* level 1
  * level 2
  * level 2.2
    * level 3
    * level 3.2
      * level 4
        * level 5
          * level 6
  * level 2.3
    * level 3.3
  
### Ordered
1. level 1
   1. level 2
      1. level 3
      2. Level 3.2
         1. level 4
            1. level 5
               1. level 6

### With blocks
1. with `inline code`
2. and some code blocks:
   ```
   and code blocks
   ```

3. and some blockquotes:
   > a blockquote

## Codeblocks
### Regular
```javascript
public foo() {
    bar();
}
```

### Long lines
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```sh
sh -c "$(curl -fsSL jfioewjfiewfoewfojewofoiepwqfewnfionqweuifhewqiofewqiofjewjfiewqjofpjewofjewqfjewqofjwqofjewqioj)"
```

### Two after each other
```javascript
public foo() {
    bar();
}
```

```javascript
public foo() {
    bar();
}
```

### HTML
```html
<html class="foo">bar</html>
```

### Shell
```sh
sudo apt update
```

```sh
sudo apt update a long line that wrappes around to the next line if it is even longer than this
```

## Tables

A small table:

| A | B | C |
|---|---|---|
| 1 | 2 | 3 |
| 4 | 5 | 6 |
| 7 | 8 | 9 |
 
A regular table:

| Column 1                    | Column 2            | Column 3  |
|-----------------------------|---------------------|-----------|
| Here is some data for col 1 | Some more for col 2 | and col 3 |
| Here is some data for col 1 | Some more for col 2 | and col 3 |
| Here is some data for col 1 | Some more for col 2 | and col 3 |
| Here is some data for col 1 | Some more for col 2 | and col 3 |
 
A table with inline code-blocks:

| Command                             | Action                                           |
|-------------------------------------|--------------------------------------------------|
| `npm install`                       | Installs dependencies                            |
| `npm run dev`                       | Starts local dev server at `localhost:4321`      |
| `npm run preview`                   | Preview your build locally, before deploying     |
| `npm run build`                     | Build your production site to `./dist/`          |
| `npm run astro ...`                 | Run CLI commands like `astro add`, `astro check` |
| `npm run astro -- --help`           | Get help using the Astro CLI                     |

A big table:

| This is a really long table with possible wraps to new line because the table heading is too big | This is a really long table with possible wraps to new line because the table heading is too big |
|--------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------|
| Lorem ipsum                                                                                      | idem dito                                                                                        |
| More values                                                                                      | This is a really long table with possible wraps to new line because the table heading is too big |
 
A table with formatting:

| column   | column |
|----------|--------|
| **test** | *test* |

A table with `sub` and `sup` text:

| column             | column             |
|--------------------|--------------------|
| some<sub>sub</sub> | some<sup>sup</sup> |
