---
Date: 2017-05-30
Title: Changing code font size on Github
Draft: true
---
GitHub's font size is too small on mobile screens.  Fix it.<!--more-->

I make lots of small edits to my code and text, and good news! GitHub has text/code editor, powered by [CodeMirror](http://codemirror.net). Unfortunately, GitHub's mobile website is near useless, and if you switch to desktop the fonts are way too small, to the point of unusable. Even at on full-sized screens, I find a 12px monospace font to be too small.

The [usual tricks to adjust font size](https://marcos.kirsch.mx/2012/04/29/font-size-bookmarklets/) don't work since GitHub has hardwired `line-height: 18px` instead of the more flexible `1.5` (in `em`s).  And since I'm targeting mobile devices, especially iOS, browser extensions are unlikely to work.

So I made a bookmarklet to adjust the CSS.   Add these to your favorites, and use them when editing code. 

[GitHub 28](javascript:fs=28%3Bee=document.getElementsByClassName%28%27CodeMirror-code%27%29%3Bfor%28i=0%3Bi%3Cee.length%3Bi++%29%7Bee%5Bi%5D.style.fontSize=%27%27+fs+%27px%27%3Bee%5Bi%5D.style.lineHeight=%271.5%27%3B%7D%0Aee=document.getElementsByClassName%28%27markdown-body%27%29%3Bfor%28i=0%3Bi%3Cee.length%3Bi++%29%7Bee%5Bi%5D.style.fontSize=%27%27+%28fs+2%29+%27px%27%3B%7D)

or if cut-n-paste is easier:
```
javascript:fs=28%3Bee=document.getElementsByClassName%28%27CodeMirror-code%27%29%3Bfor%28i=0%3Bi%3Cee.length%3Bi++%29%7Bee%5Bi%5D.style.fontSize=%27%27+fs+%27px%27%3Bee%5Bi%5D.style.lineHeight=%271.5%27%3B%7D%0Aee=document.getElementsByClassName%28%27markdown-body%27%29%3Bfor%28i=0%3Bi%3Cee.length%3Bi++%29%7Bee%5Bi%5D.style.fontSize=%27%27+%28fs+2%29+%27px%27%3B%7D
```

Here's the unminified version:

```js
fs=28;
ee=document.getElementsByClassName('CodeMirror-code');
for(i=0;i<ee.length;i++) {
  ee[i].style.fontSize = '' + fs + 'px';
  ee[i].style.lineHeight = '1.5';
}
// preview text.  slight larger font to match monospace
ee=document.getElementsByClassName('markdown-body');
for(i=0;i<ee.length;i++) {
   ee[i].style.fontSize=''+(fs+2) + 'px';
}
```

I'll keep looking for a better solution, but this seems to be the dumbest-thing-that-works.
