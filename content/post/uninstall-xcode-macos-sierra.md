---
date: 2017-04-30
title: Uninstall Xcode on macOS Sierra
---

### Delete legacy Xcode installs

TK

### Trash Xcode.app

Drag-n-drop Xcode into the trash can.  Then empty the trash.

### Delete Xcode 💩



### Win

Double check that the command line tools are also uninstalled. Open up Terminal and type `make`.  If everything worked, an annoying dialog will pop up saying how it couldn't find Xcode.

### Bonus: Rebuild Spotlight and AppStore indexes

Unfortunaltely, Spotlight and AppStore still think Xcode is installed.   In time, they might correct themselves but it's easy to force a rebuild.

In System Preferences, under Spotlight, under Privacy, add the main hard disk.  Typically it's named Macintosh HD and if you don't see it, you may have to add it using Finder preferences.  Once you've added it, wait a few minutes and the entire Spotlight index should be destroyed.  You can test by typing anything into Spotlight and the results should be very boring.

Then remove the privacy setting and reboot. The computer's CPU will run hot for a while since it is reindexing everything.  

Finally go into the AppStore and search for Xcode.  It should say it's not installed and give you the option to download. 

Phew!




