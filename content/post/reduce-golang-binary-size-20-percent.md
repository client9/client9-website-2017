---
Date: 2017-05-19
Title: Reduce Golang Binary Size by 20%
Draft: false
---

Here's how to reduce your golang binary size by 20%, for free.<!--more-->

I first read about this on [Shrink your go binaries with this one weird trick](https://blog.filippo.io/shrink-your-go-binaries-with-this-one-weird-trick/) by [Filippo Valsorda](https://blog.filippo.io). That's from 2016, but I retested on golang 1.8.1.

Just add `-ldflags="-s -w"` to your build and watch the output size drop by 20%.

```
go build -ldflags="-s -w"
```

This strips away a bunch of symbols that are only used by debuggers. If you don't use them, then everything else is the same, including panic stack traces.

This also makes gzip compression work better. By packaging the reduced golang binary in a `.tar.gz` results in a distribution 4x smaller than the original.

If you use [Godownloader](https://github.com/goreleaser/goreleaser), these flags and packaging are all done by default and the final results are uploaded to [GitHub releases](https://help.github.com/articles/about-releases/). Couldn't be easier.

The article also mentions using [UPX](https://upx.github.io) to create self-decompressing binaries. It is interesting but it's not much better than the `ldflags` + `.tar.gz` combination to justify the complexity.
