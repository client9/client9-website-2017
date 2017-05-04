---
Date: "2017-05-02"
Title: "macOS homebrew install a specific version"
----

Here's how to install a specific version of a package on macOS using homebrew.  While the process isn't automatic, it's also not hard and provides stability.


```bash
brew info _version_
```

If it exists you'll see a link to a _formula_ on GitHub.

Then look at the commit history and find the appropriate version and it's commit hash. This sounds gross but in practice it's not very hard.

Then to `brew install` this version use the raw content fro GitHub by replace _HASH_ and _NAME_ appropriately.:

```bash
brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/HASH/Formula/NAME.rb
```

### When GitHub Lets You Down

The `Homebrew/homebrew-core` repo is very large and using GitHub to look at the commit history for a particular file may timeout.  In this case you'll get a "Sorry I'm being lazy, go do it yourself" message.  OK then.

Cloning the entire repo isn't so bad.  Yes there are 90k commits, but they are all very tiny.  I'd be surprisied if a full clone took more than a minute.  However you can save some time by doing a shallow clone, by using the git flag `--depth=20000` (more or less depending your needs)

```bash
git clone --depth=20000 https://github.com/Homebrew/homebrew-core.git
cd homebrew-core
git log master -- Formula/phantoms.rb
```

Then find the version, it's hash and create the appropriate URL to the raw content.

### Next Steps

Now that you know how to install a specific version, it would be good time to review how `brew pin` works so you don't loose all your hard work.

