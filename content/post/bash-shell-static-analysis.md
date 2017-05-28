---
Draft: false
Title: Static Analysis for Bash and Shell Scripts
Date: 2017-05-28
---
Your shell scripts need static analysis.  Here's how.<!--more-->

If you must write shell code, use the same techniques you use for your primary programming language:

* static analysis
* a standard style guide or format
* a standard library

In fact, given how _weird_ shell code is, it probably needs these tools even more than your regular languages. Fortunately these tools now exist for shell.

## shellcheck

[shellcheck](https://github.com/koalaman/shellcheck) provides static analysis of shell scripts and covers an number of different dialects of shell. It's hard to overstate how great this. You'll be horrified at the output and likely learn something as well.  

You can use it three ways.

* Online at [shellcheck.net](http://www.shellcheck.net). It's a great way to quickly see how screwed-up your scripts actually are.
* [Integrated into your editor](https://github.com/koalaman/shellcheck#in-your-editor) for real-time checking.
* As CLI for batch testing. Given it's written in [Haskell](https://www.haskell.org), installation from source might be a bit alien to you. Fortunately most platforms have a [binary install](https://github.com/koalaman/shellcheck#installing).

Protip: You can lint [Dockerfiles](https://docs.docker.com/engine/reference/builder/) and the shell script inside them with [hadolint](https://github.com/lukasmartinelli/hadolint).

## mvdan/sh and shfmt

[shfmt](https://github.com/mvdan/sh) takes your crappy shell code, and makes it beautiful. There is no customization of the format other than "tabs or spaces", but it's a good default format.  Use it.

It's a single binary written in go.  You can screw around trying to download from [GitHub Releases](https://github.com/mvdan/sh/releases) or you can use this [downloader script](https://raw.githubusercontent.com/goreleaser/godownloader/master/samples/godownloader-shfmt.sh) which will do the right thing for your platform. (Disclaimer: I wrote that script.)

## client9/shlib

Disclaimer:  I wrote this.

The best shell script is one not written.  But if you have to use shell, [client9/shlib](https://github.com/client9/shlib) is a collection of tested, portable functions to help you to bootstrap out of shell into something more sane. All the code is in the [public domain](http://unlicense.org), so use and remix as needed. Credit and pull requests are welcome but not required.

## Others

### bashate

[bashate](https://github.com/openstack-dev/bashate) used by [OpenStack](https://www.openstack.org) to enforce bash style. I think it's mostly superseded by the other tools, but you might like some of it's checks.

### BATS

[BATS](https://github.com/sstephenson/bats) is the "Bash Automation Testing System" and provide an [xUnit](https://en.wikipedia.org/wiki/XUnit) type of testing framework for ... bash. I think it's overkill but maybe you'll find it useful.

If you need something simpler, check out the basic [assert](https://github.com/client9/shlib/blob/master/assert.sh) functions from [client9/shlib](https://github.com/client9/shlib).

