---
Date: "2017-05-02"
Title: "Using macOS Homebrew to Install a Specific Version"
---

Here's how to install a specific version of a package on macOS using [homebrew](https://brew.sh/).  While the process isn't automatic, it's also not hard and provides stability.

### Why Installing Old Versions Is Hard

Homebrew used to provide this functionality.  If you do search you'll probably find one these methods that no longer works.   My guess is the team behind Homebrew removed the functionality since it never worked very well, at scale.

In most Linux distrubtions, formulas are in separate repositories and can change multiple times before being released with a manual process. The version number is hand crafted and can look like "1.2.3-rc2-ubuntu10".

With homebrew, every formula is in one git repository and every git commit is a potentially a new release for all formula. This makes version numbers hard. For example let's say homebrew did a mass whitespace reformatting of the formula in one commit. Would every package need new version numbers?  How would you add them?  In a way that is consistent and doesn't have race conditions? 

The good news is that getting the exact version your want already is indexed and ready, using git. It's more work, but it's more accurate too.

### Find the Hash, Locally

If you are just trying to lock to the latest or a very recently edition, the
fastest way is to use

```
brew log -p NAME
```

Then to `brew install` this version use the raw content from GitHub by replacing _HASH_ and _NAME_ appropriately:

```bash
BREWURL=https:///raw.githubusercontent.com/Homebrew/homebrew-core
brew install ${BREWURL}/HASH/Formula/NAME.rb
```

### Find the Hash, Remote Edition

Homebrew provided a nice command to pop open a browser window pointing to
the change log of a formaula:

```bash
brew info --github NAME
```

It takes a few clicks to get the full commit hash.  First you'll have to click
the `History` button, find the change you like, then click on another icon to
get the full hash.  It sounds gross, but in practice it's not too hard.

### When GitHub Lets You Down

The `Homebrew/homebrew-core` repo is very large and using GitHub to look at
the commit history for a particular file may timeout.  In this case you'll get
a "Sorry I'm being lazy, go do it yourself" message.  OK then.

Also because it's so big, Homebrew only downloads a bit.  However, you can get
the full Homebrew history with:

```
git -C "$(brew --repo homebrew/core)" fetch --unshallow
```

It's gross but I bet it takes under a minute.  There are a lot of commits, but
they are very tiny.

You can then use git to find the entry you want:

```bash
git -C "$(brew --repo homebrew/core)" log master -- Formula/phantomjs.rb
```

Use the hash, and craft the correct URL back to github.

### Next Steps

Now that you know how to install a specific version, it would be good time to
review how `brew pin` works so you don't lose all your hard work.