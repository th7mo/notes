---
title: "Preloading Fonts"
description: "Avoid layout shifts by prioritizing font loading"
isPublic: true
dateCreated: "07-10-2024"
dateLastModified: "16-10-2024"
---

When using custom web fonts, layout shifts are a common issue. This occurs
because the browser prioritizes building the DOM over loading the custom fonts.
To solve this problem, you can preload the fonts using the following HTML
`<link>` tag:

```html
<link
    rel="preload"
    href="<font-path>"
    as="font"
    type="font/woff2"
    crossorigin="anonymous"
>
```

* `<font-path>` should end in `woff` or `.woff2`.
* The `crossorigin` is important because browsers will ignore preloaded fonts
  without the `crossorigin` attribute.
