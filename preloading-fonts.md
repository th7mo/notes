---
title: "Preloading fonts"
description: "Avoid layout shifts by prioritizing font loading"
isPublic: true
---

When using custom web fonts, layout shifts are a common issue. This occurs
because the browser prioritizes building the DOM over loading the custom fonts.
To solve this problem, you can preload the fonts using the following HTML
`<link>` tag:

```html
<link
    rel="preload"
    href="{path-to-font}.woff2"
    as="font"
    type="font/woff2"
    crossorigin="anonymous"
>
```

The `crossorigin` is important because browsers will ignore preloaded fonts
without the `crossorigin` attribute.
