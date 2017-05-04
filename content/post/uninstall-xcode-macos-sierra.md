---
Date: 2017-04-30
Title: Uninstall Xcode on macOS Sierra
Draft: false
---

Maybe you want to free up tens of gigabytes of space?  Maybe you installed it
once by mistake?  Or maybe you just want to start fresh.  Here's how to delete
Xcode complete from macOS.

The title says this is for macOS Sierra, but this should work for any version.
This article assume that you are familiar with Mac and using Terminal or the
command line.   Let's get cleaning!

### Delete legacy Xcode installs

If you started with an old version of Xcode, this
may need to be run.  If you get a "not found" error, don't worry.

```bash
sudo /Developer/Library/uninstall-devtools --mode=all
```

### Trash Xcode.app

Drag-n-drop Xcode into the trash can.  Then empty the trash.

### Delete Xcode 💩

```bash
sudo rm -rf ~/Library/Developer/
sudo rm -rf ~/Library/Caches/com.apple.dt.Xcode
```

Really old installs might have one more:

```bash
sudo rm -rf /Library/Developer/CommandLineTools
```

### Win

Double check that the command line tools are also uninstalled. Open up Terminal and type `make`.  If everything worked, an annoying dialog will pop up saying how it couldn't find Xcode.

### Bonus: Rebuild Spotlight and AppStore indexes

Unfortunately, Spotlight and AppStore still think Xcode is installed.   In time, they might correct themselves but it's easy to force a rebuild.

In System Preferences, under Spotlight, under Privacy, add the main hard disk.  Typically it's named Macintosh HD and if you don't see it, you may have to add it using Finder preferences.  Once you've added it, wait a few minutes and the entire Spotlight index should be destroyed.  You can test by typing anything into Spotlight and the results should be very boring.

Then remove the privacy setting and reboot. The computer's CPU will run hot for a while since it is reindexing everything.  

Finally go into the AppStore and search for Xcode.  It should say it's not installed and give you the option to download. 

Phew!
