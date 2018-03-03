---
title: Buying MicroSD Cards for Raspberry PI
date: 2017-10-15T23:32:44.618Z
draft: true
---

TLDR; you want a "Micro SD" or "Micro SDHC" card, with 16GB in storage size, with a speed of "Level 10" for about $10.00.  You can find something with storage and less performance but will likely only save a dollar or two at most.   Alternatively, if you find something under $5 (with any storage or speed), it's worth picking up a few.
<!-- more -->

I wrote this since I was completely new to the world of Raspberry Pi.  While you can buy various kits that supply Micro SD cards, I wanted to get some extra to play around and found the whole process of "what do I buy" really confusing.  So I wrote this FAQ.  Hopefully it saves you some time.


# What is the difference between MicroSD and MicroSDHC?

Nothing, and for the most part they are synonyms.  Raspberry Pi can use both MicroSD and MicroSDHC. 

The original spec for MicroSD has a maximum memory of 2G.  The next generation spec "SD HC" for "High Capacity" expanded that.  I'm not sure you can buy anything that *doesn't* accept a SDHC card now.

# What memory size should I get for Raspberry Pi?

As of this writing, anything under 16GB is hard to find and frequently at the same price of 16GB.  So go buy a 16GB.  32GB typically costs 2x the 16GB (for now), and unlikely you need that much space when first starting out.

# What speed level should I get for use in Raspberry Pi?

The level is a rating of write speed, and in a theoretical world a Level 10 card has 5x more performance at *sustained sequential writes* (such as when a video is being written).   For Raspberry Pi, it's more common to do random 4K read and writes, however in general, the higher the level, the better.   The sustained write performance is very useful for copying and initializing images.  The price difference between a 16GB Level 10 card and a 8G Level 4 (or worse) card is often a dollar.  Spend the extra dollar!

# What brand of MicroSD card works best in Raspberry Pi?

SanDisk, Samsung, Kingston or another brand you have heard of.   Notes:

* I think Samsung only makes 32GB and higher now.   
* "Ultra" is SanDisk's brand for Level 10.
* Kingston also makes some industrial MicroSD card with an extended operating temperature range.

# Do I need the pre-installed Raspberry Pi image on a Micro SD card?

No.  In fact, the image that is installed is likely obsolete and you need to re-image.

# Where do I buy a Micro SD card for Raspberry Pi?

You might get the best deals at your local Best Buy or Fry's Electronics (and maybe get some very cheap close-out 8G cards).

Alternatively, I found [Vilros](https://www.vilros.com) has reasonable priced cards, along with everything else Raspberry Pi.  They offer $2 flat rate shipping as well.

# How do I buy MicroSD card for Raspberry PI cards on Amazon.com?

Oddly, for MicroSD cards amazon.com falls short.  It has a confusing search interface, and oddly has the most expensive selection of MicroSD cards.  However, if you are Prime member, if you find something you like, you might be able to get it delivered *that day*.

One problem is that Amazon now sells stuff from third parties.  With memory cards and chips, there have been reports of counterfeits or used cards, so you'll want to buy directly from Amazon -- look for "sold and shipped by amazon.com LLC".  Unfortunately, the search results mix low quality and high quality together, which is why your local Best Buy might be easier.

Here's the algorithm I used to find name brand 16GB, level 10 card for $10 (which is an average price).

* Search for "micro sd cards".  It should have some autocomplete drop down refining your search.  Select in category "Computers" (and not "Electronics").
* In "Filters", select Sort by price, low to high.
* In "Filters", select in the "Department" settings "Micro CD Cards".  There should be a MicroSD specific-filters available now
* You can now select storage size (16GB), and Speed ("10").
* You should see something for SanDisk 16GB, Level 10 for about $10.00 sold and shipped by Amazon.

Good luck!








