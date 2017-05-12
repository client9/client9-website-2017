---
Date: 2017-05-12
Title: CSS Styling Computer Code
Draft: true
---
Posting code online?  Here's how to use CSS to make it look great.<!--more-->

## Format your code nicely

No matter how nicely you style the code, it won't matter if the code looks sloppy.  Make sure it uses a consistent indentation style and is flush-left.

## Make sure your "smart punctuation" isn't wrecking your code.

Many blog engines rewrite content to improve typography: smart quotes, changing dash to a Unicode minus-sign, etc.   Make sure it's not doing this to code blocks.  If someone cut and pastes your code, it won't work.  Historically a number of popular platforms destroyed code blocks. 

This site uses [hugo](https://gohugo.io) and it works correctly.

## Use a modern monospace system font


## Watch out for line breaks 

The HTML render will treat white space _and_ the plain dash `-` as a good place to insert a line break.   This can cause a mess.  For example:

```html
<p>... to prevent writes use the
flag <code>--dry-run</code> ...</p>
```

can render like this:

```
to prevent writes use the flag --
dry-run
```

Prevent this using the 

## Handle embedded tabs

If you do use tabs or if they sneak in by accident, you can control how much space they represent using this ancient CSS property

## Reconsider using syntax highlighting

Most of the styles are wildly over-done.  

While you might make the case that for writing and scanning large chunks of code, the colorization and low contrast might be useful.  But for posting small snippets on your blog... we'll let me put it this way.   we are all able to read human languages just fine without coloring nouns and verbs differently.  It's chart junk for computer code.

A good use of color is for keyboard sessions where you are distinguishing between request and response.  

If you must do it, try to it server-side instead of client-side.  It's not worth the cost of loading another JavaScript library and having the style flash in.  It's more important that your site load and perform quickly than coloring keywords.