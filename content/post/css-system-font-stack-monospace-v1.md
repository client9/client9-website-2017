---
Date: 2017-04-09
Title: "CSS System Font Stack - Monospace V1"
---
Most operating systems ship with a few decent if not great monospace fonts.  
For me, I don't see a need to use a web font here.

It's possible in a few years that the default will actually be a real system
font.  It's claimed [Firefox 55 will use Consolas or
Menlo](https://www.fxsitecompat.com/en-CA/docs/2017/some-of-browser-default-fonts-have-been-changed/).
Looks like Chrome on modern windows is also [using
Consolas](https://bugs.chromium.org/p/chromium/issues/detail?id=388087).  And
maybe Apple's Safari wll default to use the mysterious
[SFMono-Regular](https://developer.apple.com/fonts/).

## CSS

Until then, here's my monospace system stack.  It's simple:

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

<style>
.sample {
  background-color: #f6f8fa;
  font-size: 22px;
  margin-left:10px;
  padding: 10px;
</style>

<p class="sample" style="font-family: menlo, consolas, monospace;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

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

<p class="sample" style="font-family: menlo;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Consolas

[Consolas](https://www.microsoft.com/typography/fonts/font.aspx?FMID=1924) has been available on Windows products since 2007.  It *might* be available on MacOS if Microsoft Office is installed.

<p class="sample" style="font-family: consolas;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### monospace (default)

It's probably something gross like Courier New.  But maybe you are lucky and
it's one of the above or something nice.

<p class="sample" style="font-family: monospace;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

## Losers

###  Lucida Console

Lucida Console has been the main monospace font on windows products for a very
long time and is still available on Windows 10. That said, Consolas is likely
a better choice for modern systems.

<p class="sample" style="font-family: lucida console;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Monaco

Monaco was the default monospace font for Mac, but has been superceeded by
Menlo starting in 2009 with MacOS 10.6.  Oddly in MacOS 10.12.4 it is
avaialble but xwith iOS 10.3.1 it is rendered as Courier.  In otherwords, it's
out.

<p class="sample" style="font-family: monaco;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Courier

No comment.

<p class="sample" style="font-family: courier;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Courier New 

It's so thin since it was designed for a piece of metal hitting a sloppy typewriter ribbon smashing ink onto a paper.  Why this even appeared at all as a digital font, I have no idea.

<p class="sample" style="font-family: courier new;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### SFMono-Regular

The new [San Franicsco](https://developer.apple.com/fonts/) has a monospace
version "SFMono-Regular".  It's beautiful.  But [it's not a system
font](https://forums.developer.apple.com/thread/49001) - it's
only available in Apple's "Terminal" application and/or other custom
applications.   Developers can install it as a system font, but otherwise it's
not available to Safari on MacOS or iOS.  Until Apple clears this up, it's not
going in the font stack.

<p class="sample" style="font-family: SF Mono;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

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

