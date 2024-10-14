---
title: "@media Query"
description: "Apply different styles for different media types/devices"
isPublic: true
---

`@media` queries are a [CSS](css) feature that allows for different behavior
based on the characteristics of the device. One of the most common uses for a
`@media` rule is making responsive design:

```css
@media screen and (max-width: 600px) {
    body {
        font-size: 14px;
    }
}
```

In the code fragment above all the CSS styling rules defined in the `@media`
scope only apply when the screen of the device has a width of `600px` or less.

`@media` queries can also be used to set a light or dark
[color scheme](color-scheme) based on the system theme.
