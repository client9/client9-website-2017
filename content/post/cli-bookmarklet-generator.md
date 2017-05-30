---
Draft: true
Title: Bookmarklet Generator CLI
Date: 2017-05-31
---

Instead of screwing around with javascript and npm, I wrote a CLI in go.

It just minifies `stdin`, URL encodes, and adds the `javascript:` scheme.

{{< gist client9 8fa9ce8eecb9db1cfcdc7b729b0d7a2b >}}


