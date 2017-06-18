---
date: 2017-04-09
title: "CSS System Font Stack - Monospace V1"
---

Most operating systems ship with a decent monospace fonts.
Use them.

Right now, most browsers use something like Courier for their default
monospace font.  This isn't very useful and not acceptable for code or
programming samples.

It's possible in a few years that the default will be a real system
font. It's claimed Firefox 55 will use Consolas or
Menlo [^foo]. And it looks like Chrome on modern Windows is using
Consolas [^2]. And maybe Apple's Safari will someday default to use the mysterious SFMono-Regular[^3].

Until then, we need to do something else. 

## CSS

Below is a high-quality, monospace stack, that works on most modern (last eight years) systems.

```css
/* 1: Current MacOS/iOS font since 2009
 * 2: Current Windows font since 2007
 * 3: If nothing else matches, use the system default.
 *    Either it's over 10 years old and it's hopeless.  Or
 *    it's linux or other OS, which hopefully has better defaults
 *    and/or has been customized by the user.
 */
font-family:
  /* 1 */ menlo,
  /* 2 */ consolas, 
  /* 3 */ monospace;
```

This is what it looks like on your browser:

{{< font-sample "font-family:menlo, consolas, monospace;">}}

## Winners

If font below is not available on your system, it will be rendered in a
`serif` font.

<p class="sample" style="font-family: serif;">
This is not a monospace font.<br>
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.
</p>

### Menlo

Menlo has been the current Mac (both MacOS and iOS) monospace system font
since 2009 with the release of MacOS 10.6.  It is unique to Mac, so it comes
first.

{{< font-sample "font-family:menlo;" >}}

### Consolas

[Consolas](https://www.microsoft.com/typography/fonts/font.aspx?FMID=1924) has been available on Windows products since 2007. 

{{< font-sample "font-family: consolas;" >}}

### monospace (default)

This is the default `monospace` font and it's probably something gross like Courier New. But maybe you are lucky and it's one of the above or something nice.

{{< font-sample "font-family: monospace;" >}}

## Losers

The followng fonts were rejected since they are deprecated, don't work across platforms, or don't exist.

###  Lucida Console

Lucida Console has been the main monospace font on windows products for a very
long time and is still available on Windows 10. That said, Consolas is likely
a better choice for modern systems.

{{< font-sample "font-family:lucida console;">}}

### Monaco

Monaco was the default monospace font for Mac, but has been superseded by
Menlo starting in 2009 with MacOS 10.6.  Oddly in MacOS 10.12.4 it is
available but xwith iOS 10.3.1 it is rendered as Courier.  In otherwords, it's
out.

{{< font-sample "font-family: monaco;" >}}

### Andale Mono

Similar to Menlo, Andale Mono is an old font and available on MacOS but no longer on iOS.  It's out.

{{< font-sample "font-family: andale mono;" >}}

### Courier

No comment.

{{< font-sample "font-family: courier;" >}}

### Courier New 

It's so thin since it was designed for a piece of metal hitting a sloppy typewriter ribbon smashing ink onto a paper.  Why this even appeared at all as a digital font, I have no idea.

{{< font-sample "font-family: courier new" >}}

### SFMono-Regular

The new [San Franicsco](https://developer.apple.com/fonts/) has a monospace
version "SFMono-Regular".  It's beautiful.  But [it's not a system
font](https://forums.developer.apple.com/thread/49001) - it's
only available in Apple's "Terminal" application and/or other custom
applications.   Developers can install it as a system font, but otherwise it's
not available to Safari on MacOS or iOS.  Until Apple clears this up, it's not
going in the font stack.

{{< font-sample "font-family: SFMono-Regular;">}}

## Any Linux or Android Font

I've seen Liberation Mono, Ubuntu Mono, Roboto Mono, and Droid Sans Mono listed in other font stacks.  I'm not including them however and just defaulting to `monospace` after the main fonts.  Why?  For Linux:

* Linux is a moving target with most OS vendors producing updates every 6
  months
* Linux users are more likely to actively customize and replace the default
  fonts.  In which case, I should not override their preferences
* Linux users are likely 0.01% of my audience.

I should understand Android more than I do, however I'm still defaulting to
`monospace` for them since:

* Android already defaults to something other than Courier (true?) or has
  extremely limited choices.
* Android and Google Chrome appear to actively improving their default font choices.

This is V1 of my monospace stack. In V2 I'll adjust to enhance these
plaforms.

## References

* 2015-10-31 [System Shock Mono](http://z12t.com/system-shock-mono/) describes making a system font stack for monospace fonts.

[^foo]: [Some of browser default fonts have been changed](https://www.fxsitecompat.com/en-CA/docs/2017/some-of-browser-default-fonts-have-been-changed/)
[^2]: [Chromium Bug #388087](https://bugs.chromium.org/p/chromium/issues/detail?id=388087)
[^3]: [Apple Fonts](https://developer.apple.com/fonts/)
