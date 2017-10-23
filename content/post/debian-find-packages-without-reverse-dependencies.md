---
title: 'Debian: find packages without reverse dependencies'
date: 2017-10-23T00:51:25.060Z
draft: false
---
Find all Debian packages that are either orphans, user commands or critical components. <!-- more --> 

When trying to make minimal OS, one wants to get rid of as many non-critical packages as possible.  Under Debian, `apt-cache rdepends --installed` on a given package show the reverse dependencies, or a list of other packages that depend on it.

Packages without any reverse dependencies could be one of three things:

1. Orphans - truly not used by anything.  `apt-get purge` away.
2. A top-level user command, something like `wget`
3. Something critical for booting.  Interestingly, `bash` comes up in the list.  It's hard to imagine Debian booting without it.


Enjoy!


```bash
#!/bin/bash

# provides list of packages that have
# nothing depending on them

for target in `dpkg -l | grep '^ii' | awk '{ print \$2 }'`; do
   if [ "`apt-cache rdepends --installed $target | wc -l`" = "2" ]; then
      echo "$target"
   fi
done
```

