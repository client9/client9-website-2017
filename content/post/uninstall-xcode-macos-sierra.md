---
Date: 2017-04-30
Title: Uninstall Xcode on macOS Sierra
Draft: false
---

Maybe you want to free up tens of gigabytes of space?  Maybe you installed it
once by mistake?  Or maybe you just want the command line tools and not the
full IDE? Or maybe you just want to start fresh.  Here's how to delete
Xcode completely from macOS.

While title says this is for macOS Sierra, this should work for any version.
And we assume that you are familiar with basic Mac functionality and using Terminal or the
command line. Let's get cleaning!

### Delete legacy Xcode installs

If you started with an old version of Xcode, this
may need to be done first.  If you get a "not found" error, don't worry and
skip to the next step.

```bash
sudo /Developer/Library/uninstall-devtools --mode=all
```

### Trash Xcode.app

Drag-n-drop Xcode into the trash can.  Then empty the trash.  You know how to
do this.

### Delete Xcode 💩

Even after being trashed, Xcode turds still lurk.  Delete them.

```bash
sudo rm -rf ~/Library/Developer/
sudo rm -rf ~/Library/Caches/com.apple.dt.Xcode
```

Really old installs might have one more

```bash
sudo rm -rf /Library/Developer/CommandLineTools
```

### Win

Double check that the command line tools are also uninstalled. Open up Terminal and type `make`.  If everything worked, an annoying dialog will pop up saying how it couldn't find Xcode.

### Bonus: Rebuild Spotlight and AppStore indexes

Unfortunately, Spotlight and AppStore still think Xcode is installed.   In time, they might correct themselves but it's easy to make them do the right thing.

In System Preferences, under Spotlight, under Privacy, add the main hard disk.  Typically it's named `Macintosh HD` and if you don't see it, you may have to enable it using Finder preferences.  Once you've added it, wait a few minutes and the entire Spotlight index should be destroyed.  You can test by typing anything into Spotlight and the results should be very boring.

Then remove the privacy setting and reboot. The computer's CPU will run hot for a while since it is reindexing everything.  

Finally go into the AppStore and search for Xcode.  It should say it's not installed and give you the option to download. 

Phew!
