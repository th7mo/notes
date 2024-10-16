---
title: "Prefers Reduced Motion"
description: "Media query indicating user preference for motion animations"
isPublic: true
---

It is good for web accessibility to only introduce motion animations when the
user has not indicated to prefer reduced motion. In [CSS](css) there is a
[@media query](media-query) to check if the user has indicated to prefer
reduced motion:

```css
@media (prefers-reduced-motion: no-preference) {
    div:hover {
        transform: translateY(-3px);
    }
}
```

In the code fragment above the transform animation rule will only work if the
user has not set the `prefers-reduced-motion` setting. The possible options for
`prefers-reduced-motion` are:

* `no-preference`: evaluates as `false`.
* `reduce`: evaluates as `true`.

## See also
* The extended documentation at [mdn web docs](https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-reduced-motion)
