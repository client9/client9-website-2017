---
title: Buying MicroSD Cards for Raspberry PI
date: 2017-10-15T23:32:44.618Z
draft: false
---

TLDR; you want a "Micro SD" or "Micro SDHC" card, with 16GB in storage size, with a speed of "Level 10" for about $10.00.  You can find something with storage and less performance but will likely only save a dollar or two at most.


# What is the difference between MicroSD and MicroSDHC?

Nothing, and for the most part they are synonyms.  Raspberry Pi can use both MicroSD and MicroSDHC. 

The original spec for MicroSD has a maximum memory of 2G.  The next generation spec "SD HC" for "High Capacity" expanded that.  I'm not sure you can buy anything that *doesn't* accept a SDHC card now.

# What memory size should I get?

As of this writing, anything under 16GB is hard to find and frequently at the same price of 16GB.  So go buy a 16GB.  32GB typically costs 2x the 16GB (for now), and unlikely you need that much space when first starting out.

# What speed level should I get?

The level is a rating of write speed, and in a theoretical world a Level 10 card has 5x more performance at *sustained sequential writes* (such as when a video is being written).   For Raspberry Pi, it's more common to do random 4K read and writes, however in general, the higher the level, the better.   The sustained write performance is very useful for copying and initializing images.  The price difference between a 16GB Level 10 card and a 8G Level 4 (or worse) card is often a dollar.  Spend the extra dollar!

# What brand of MicroSD card should I get?

SanDisk, Samsung, Kingston or another brand you have heard of.  Interestingly, I think Samsung only makes 32GB and higher now.

# Do I need the pre-installed Raspberry Pi image on a Micro SD card?

No.  In fact, the image that is installed is likely obsolete and you need to re-image.

# Where do I buy a Micro SD card for Raspberry Pi?

You might get the best deals at your local Best Buy or Fry's Electronics (and maybe get some very cheap close out 8G cards).

# How do I buy MicroSD cards on Amazon.com?

You want brand name cards, sold and shipped by Amazon and not a third party.  Many reports of counterfeits or used cards abound.   Unfortunately the search on Amazon is quite bad for MicroSD cards.  Low quality and high quality cards are mixed together and generally the process seems very random and chaotic, which is why your local Best Buy might be easier.

* Search for "micro sd cards"
* Select in category "Computers" (not "Electronics")
* You should be able to sort by price, "low to high"
* You should see something for SanDisk 16GB, Level 10 for about $10.00 sold and shipped by Amazon.




