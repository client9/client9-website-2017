---
Date: 2017-05-30
Title: Self-Documenting Makefiles
---
Automatically have "make help" print usage!<!--more-->

[Makefiles](https://www.gnu.org/software/make/manual/html_node/Introduction.html) are making a come-back due to wide use in the [golang](https://golang.org) community. The only problem is... what do they do? Reading a makefile can be hard -- it's often ugly and many of targets are for internal use only.  And unlike a good CLI program, there is no equivalent of `--help`.  

Wouldn't it be great if you could mark-up the makefile and have `make help` automatically produce a usage description?

I first read how to do this at the [Marme Lab Blog](https://marmelab.com/blog/) in [Self-Documented Makefile](https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html). There was a followup in [Hacker News](https://news.ycombinator.com/item?id=11195539), and buried near the bottom, [m6w6](https://news.ycombinator.com/user?id=m6w6) posted an even better version (imho).  Here it is.

```make
help:
	@awk -F ':|##' '/^[^\t].+?:.*?##/ {\
	printf "\033[36m%-30s\033[0m %s\n", $$1, $$NF \
	}' $(MAKEFILE_LIST)
.DEFAULT_GOAL=help
.PHONY=help
```

Add this to the bottom of your makefile (and be sure to replace leading spaces with a tab).  Or as a one-liner:

```make
help:
	@awk -F ':|##' '/^[^\t].+?:.*?##/ {printf "\033[36m%-30s\033[0m %s\n", $$1, $$NF}' $(MAKEFILE_LIST)    
```

Geez, in one line, you got makefile stuff, awk stuff, regular expressions, printf formats and terminal colors.  Understanding this might be hard, but using it is very easy.  Just document your targets on the same line using a `##` comment:

```make
build: ## build but do not install
        go build .
install: ## install command
        go install .
lint: ## run linters
        gometalinter ...
clean:  ## cleanup
        go clean ./..
```

And try it out:

```sh
$ make help
build                   build but do not install
install                 install command
lint                    run linters
clean                   cleanup
```

If you want sorted output, by all means add a `| sort` to the end of the `help` target.

I've seen some other approaches to this by [wrapping make](https://medium.com/@tjholowaychuk/modern-make-b55d53cf80d9). I was tempted to have `make help` call a golang program that would parse the Makefile to generate help.  But this `awk` trick is by far the best, as it will work out of the box on just about every system.  I've tested on macOS, linux, and [Alpine Linux](https://alpinelinux.org) with [busybox](https://busybox.net) awk.

Thank you [MarmeLab](https://marmelab.com/) and [m6w6](https://news.
ycombinator.com/user?id=m6w6)!

