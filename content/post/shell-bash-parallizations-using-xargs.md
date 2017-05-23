---
Date: 2017-05-20
Draft: false
Title: "Parallelize Shell or Bash Scripts Using Xargs"
---
Learn how to speed up your shell scripts by running them in parallel with xargs.<!--more-->

Who doesn't want to go faster? It is common to have a setup script that downloads various packages or tools. Here's an example: 

```
#!/bin/sh -ex

# hugo static blog site
go get github.com/spf13/hugo

# https://github.com/client9/misspell
./godownloader-misspell 0.1.2

# shellcheck.net
docker pull koalaman/shellcheck
```

It runs one line after another in serial. That's slow.

But notice how each line doesn't depend on any other (and comment and blank lines don't matter). If you can write a script in such a way, then you really speed things up by running in parallel  using [xargs](https://en.wikipedia.org/wiki/Xargs):

```
cat setup.sh | xargs -P4 -ICMD /bin/sh -exc CMD
```

That's it.  Your script could run 4x faster.

Where `-P4` is number of processes to run in parallel.  Since most of the time it is network calls, there is no harm in making this 8 or even 16.

Where `-ICMD` is ... well the magic of mixing xargs and shell.  You can use something else other than `CMD` if you want.  It's the `-I` that's important and using the same word as the last arg. 

You can run the setup in serial (normal) for debugging and one-time setups, and in parallel to speed up runs on CI/CD systems such as [travis-ci](https://travis-ci.org).

There are [other ways](https://www.codeword.xyz/2015/09/02/three-ways-to-script-processes-in-parallel/) to parallelize scripts, but this is easiest.

Update:

[Alpine Linux](https://alpinelinux.org) uses [busybox](https://busybox.net) version of xargs which does not support `-P`.  You'll have to install [findutils](https://pkgs.alpinelinux.org/contents?file=&path=&name=findutils&branch=edge&repo=main&arch=x86) to get the [GNU findutils](https://www.gnu.org/software/findutils/).
