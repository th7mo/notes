---
title: "::selection"
description: "CSS pseudo-element to style highlighted text"
isPublic: true
---

The `::selection` [CSS](css) pseudo-element applies styles to the part of a
document that has been highlighted by the user. The most common use of this
pseudo-element is to change the default blue color of highlighted text:

```css
::selection {
    color: var(--color-background);
    background-color: var(--color-foreground);
}
```

In the example above the text- and background-color are inverted when text is
highlighted.
