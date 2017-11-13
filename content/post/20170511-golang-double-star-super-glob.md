---
date: 2017-05-11
title: Golang globs and the ** Double Star Glob Operator
---

Golang's glob library doesn't support the ** double-star or globstar operator.  Here's how to get it.<!--more-->


The golang [filepath/glob](https://golang.org/pkg/path/filepath/#Glob) and [filepath/match](https://golang.org/pkg/path/filepath/#Match) functions provide [glob matching](https://en.wikipedia.org/wiki/Glob_(programming)) but does not support the "double star", "double asterisk", "globstar", "super glob", "super wildcard" operation that decends into other directories.  According to [Issue 11862](https://github.com/golang/go/issues/11862) the problem seems to be handling edge cases like crossing file system boundries, symlinks and infinite loops (if I read [rsc's comment](https://github.com/golang/go/issues/11862#issuecomment-168733265) correctly).

In the meantime, one of these packages might work:

* [mattn/go-zglob](https://github.com/mattn/go-zglob) looks very optimized for filewalking.
* [bmatcuk/doublestar](https://github.com/bmatcuk/doublestar) appears to be the most mature but could use some [cleanups](https://goreportcard.com/report/github.com/bmatcuk/doublestar).
* [godo/glob.go](https://github.com/go-godo/godo/blob/master/glob.go) is an implementation embedded inside [godo](https://github.com/go-godo/godo)

In addition [gobwas/glob](https://github.com/gobwas/glob) is an excellent generic glob package that claims huge performance advantage over other globs and the equivalent regular expressions.  It does not however provide a filewalker.

Happy globbing, and if you want to know more about the sciences of globs, [@rsc wrote it up for you](https://research.swtch.com/glob).

## Notes

* In bash 4, you can [turn on globstar](https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html) with `shopt -s globstar`
* The latest macOS (10.12.4) has by default a very old bash 3 installed and doesn't support globstar.
* Java's [FileSystem#getPathMatcher](http://docs.oracle.com/javase/7/docs/api/java/nio/file/FileSystem.html#getPathMatcher%28java.lang.String%29) describes globstar in more detail.

