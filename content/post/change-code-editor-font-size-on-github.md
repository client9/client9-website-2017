---
Date: 2017-05-30
Title: Changing code font size on Github
Draft: true
---
How to edit your code on GitHub.com, even on the smallest screens.<!--more-->

I make lots of small edits to my code and text, and good news! [GitHub.com](https://github.com/) has text/code editor, powered by [CodeMirror](http://codemirror.net). Just find the file you want and click on the pencil icon in the upper-right.  You can make edits directly on `master` or automatically create a branch and pull-request.

Unfortunately, GitHub's mobile website does not allow editing, and if you switch to desktop-mode the fonts are so small and is unusable. Even at on full-sized screens, I find a 12px monospace font to be too small.

The usual method to fix this is by means of a "userscript" using a browser extension such as [greasemonkey](https://addons.mozilla.org/en-US/firefox/addon/greasemonkey/) or [tampermonkey](http://tampermonkey.net). These do not work on mobile however.

The hack around this is to use a [bookmarklet](https://en.wikipedia.org/wiki/Bookmarklet). The main one to [adjust font size](https://marcos.kirsch.mx/2012/04/29/font-size-bookmarklets/) doean't work since GitHub has hardwired `line-height: 18px` instead of the more flexible `1.5` (in `em`s).

So I wrote my own bookmarklet to adjust GitHub's CSS. Add these to your bookmark bar, and use them when editing code. The 28px one works well on mobile, while the 20px gives the desktop a nice bump. GitHub12 is the normal size.

- [GitHub 12](javascript:fs=12%3Bee=document.getElementsByClassName%28%27CodeMirror-code%27%29%3Bfor%28i=0%3Bi%3Cee.length%3Bi++%29%7Bee%5Bi%5D.style.fontSize=%27%27+fs+%27px%27%3Bee%5Bi%5D.style.lineHeight=%271.5%27%3B%7D%0Aee=document.getElementsByClassName%28%27markdown-body%27%29%3Bfor%28i=0%3Bi%3Cee.length%3Bi++%29%7Bee%5Bi%5D.style.fontSize=%27%27+%28fs+2%29+%27px%27%3B%7D)
- [GitHub 20](javascript:fs=20%3Bee=document.getElementsByClassName%28%27CodeMirror-code%27%29%3Bfor%28i=0%3Bi%3Cee.length%3Bi++%29%7Bee%5Bi%5D.style.fontSize=%27%27+fs+%27px%27%3Bee%5Bi%5D.style.lineHeight=%271.5%27%3B%7D%0Aee=document.getElementsByClassName%28%27markdown-body%27%29%3Bfor%28i=0%3Bi%3Cee.length%3Bi++%29%7Bee%5Bi%5D.style.fontSize=%27%27+%28fs+2%29+%27px%27%3B%7D)
- [GitHub 28](javascript:fs=28%3Bee=document.getElementsByClassName%28%27CodeMirror-code%27%29%3Bfor%28i=0%3Bi%3Cee.length%3Bi++%29%7Bee%5Bi%5D.style.fontSize=%27%27+fs+%27px%27%3Bee%5Bi%5D.style.lineHeight=%271.5%27%3B%7D%0Aee=document.getElementsByClassName%28%27markdown-body%27%29%3Bfor%28i=0%3Bi%3Cee.length%3Bi++%29%7Bee%5Bi%5D.style.fontSize=%27%27+%28fs+2%29+%27px%27%3B%7D)

or if cut-n-paste is easier:

```
javascript:fs=28%3Bee=document.getElementsByClassName%28%27CodeMirror-code%27%29%3Bfor%28i=0%3Bi%3Cee.length%3Bi++%29%7Bee%5Bi%5D.style.fontSize=%27%27+fs+%27px%27%3Bee%5Bi%5D.style.lineHeight=%271.5%27%3B%7D%0Aee=document.getElementsByClassName%28%27markdown-body%27%29%3Bfor%28i=0%3Bi%3Cee.length%3Bi++%29%7Bee%5Bi%5D.style.fontSize=%27%27+%28fs+2%29+%27px%27%3B%7D
```

Here's the unminified version. Edit that first var to be whatever size works for your device. 

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

I'll keep looking for a better solution, but this seems to be the dumbest-thing-that-works. In fact, I'm editing this on a iPhone 5se.
