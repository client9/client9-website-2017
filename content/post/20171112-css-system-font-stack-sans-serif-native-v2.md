---
date: 2017-11-13
title: "CSS System Font Stack - Sans Serif Native - V2"
---

This is an update to the original native font stack [article](https://www.client9.com/css-system-font-stack---sans-serif-native---v1/).  It attempts to use the system sans serif font used by operating system for user interfaces. This is best for buttons and other UI elements on the page, but it also works for body text.

## What's Changed?

The [W3C CSS Fonts 4 draft](https://drafts.csswg.org/css-fonts-4/#system-ui-def) now includes a built-in font `system-ui`.  It should render using the native sans-serif font.  It's implemented in:

* [Chrome](https://www.chromestatus.com/feature/5640395337760768), since 2017-01, version 56
* [Safari](https://bugs.webkit.org/show_bug.cgi?id=151493), since 2017-02 but not clear which version

As of 2017-11, neither Firefox or Microsoft Edge supports this, but I suspect in time they will.

Due this change, I'm updating the original font stack as follows:

* Adding `system-ui` to first position
* Removing the chrome-specific hack `BlinkMacSystemFont` since it's superseded by `system-ui` and chrome auto-updates
* Keeping the Safari specific `-apple-system` font for now.

## The CSS

```css
/* 0: CSS Font V4 standard
/* 1: Safari special
 * 2: Recent windows
 * 3: Older Macs,
 * 4: system default,
 */
font-family:
  /* 0 */ system-ui,
  /* 1 */ -apple-system,
  /* 2 */ "Segoe UI",
  /* 3 */ Helvetica Neue,
  /* 4 */ sans-serif;
```

This is what it looks like on your browser:

{{< font-sample "font-family: system-ui,-apple-system,segoe ui,helvetica neue,sans-serif;" >}}

## The Fonts

More font samplers available in the [original article](https://www.client9.com/css-system-font-stack---sans-serif-native---v1/).

### system-ui

{{< font-sample "font-family: system-ui, serif;" >}}

### References

More reference available in the [original article](https://www.client9.com/css-system-font-stack---sans-serif-native---v1/).

* 2017-09-19 [System Font Stack](https://css-tricks.com/snippets/css/system-font-stack/) By [Geoff Graham](https://css-tricks.com/author/geoffgraham/) a nice write up on OS default fonts and how to use them in CSS.
