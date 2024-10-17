---
title: "YAML Front Matter"
description: "Metadata about Markdown files"
isPublic: true
dateCreated: "07-02-2024"
dateLastModified: "16-10-2024"
---

[Markdown](markdown) files can have YAML front matter. YAML front matter is
indicated with the following syntax:

```yaml
---
<attributes>
---
```

In the YAML front matter metadata about the document can be stored. Information
about the author, title, date and language of the document are frequently used
pieces of metadata:

```yaml
---
author: "Thimo van Velzen"
title: "Intership Report Pre-final"
description: "A report describing my entire internship"
lang: en
---

# Introduction
```

[Pandoc](pandoc) uses the YAML front matter to insert various pieces of metadata
into the generated document.

The `lang:` field is used by the `ltex-ls` language server to check the language
of the current buffer.
