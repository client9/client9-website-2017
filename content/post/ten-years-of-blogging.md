---
title: Ten Years of Blogging
date: 2017-06-18T04:10:37.771Z
draft: true
---
A look at various blogging platforms I've used over 10 years.
<!--more-->

I really like writing.  But writing is slow and error prone for me.  And coding is fast and easy for me.  So it's very often find myself at the intersection of writing and coding.  It's also a great way for me to investigate various technologies outside of [the day job](https://www.signalsciences.com/).

I just found some old posts from 2007 (not currently online, you'll see why below), and thought I'd summarize my history of my attempts at blogging and blogging platforms. Missing are experiments with WordPress and Medium.com.

## Blosxom circa 2007 (or earlier)

[blosxom](http://blosxom.sourceforge.net). It's pronounced "Blog-some"... get it??

It's one-file perl CGI script that uses normal files for articles. You just make and edit text files, it serves them.  It slaps on a header and footer.  No database. No markdown. Completely great for old shared hosting accounts circa 2007.

I can't remember but I believe my issue at the time was, "where do I save my files?" -- this was before the rise of GitHub, and I didn't want to deal with backup/restore/SFTP or other nonsense.

## Blogger

At some point I was using [blogger](https://www.blogger.com/) before it was bought by Google.  It had a number of problems:

* annoying "blog roll" links at the top of each page that would link some other random blog.  I think you could hack on the templates to get rid of them.  These are gone now, but the "powered by blogger" is still on the footer.
* template language and system was a bit odd and I found it very hard to edit and make something look good.
* WYSIWYG editor I seem to recall had some raw editing mode and which never round-tripped correctly and made the source really ugly.  In particular doing code samples was horrible.

At some point Google bought it.  Integration with Google's infrastructure took a long time.  Then they rolled out some change that made all article loading to be async with the page.  Besides ugly (with a big gear spinning), it was slow.  I think the idea was that it would get a different version of the page depending on your screen size or mobile capability.  This was like 2012 or so, so the Web was a hot mess of HTML and JS incompatibilities.

Now days, I think blogger is too big to for Google to kill off, but it's also not making any money.  So improvements are quite modest.  I haven't looked at it a long while.

## Jekyll and GitHub pages

Somehow I moved off Blogger to using [Jekyll](https://jekyllrb.com) and [GitHub Pages](https://pages.github.com).  I loved the concept.  You get complete control, while being free, and on high-speed infrastructure with nothing to manage.

In practice, I found trying to use Jekyll locally to be near impossible.  This is mostly due to ruby and the difficultly of making ruby development be identical to what GitHub uses in production (or perhaps not ruby but GitHub's use of ruby).  Maybe it is better now, but GitHub now uses a very old of Jekyll compared to the open source project, so who knows.

## Hugo and GitHub Pages

I swapped over to [Hugo](https://gohugo.io).  I love it. And compared to Jekyll, it's trivial to get the same setup of Hugo on multiple machines and operating systems (it's a single binary).

But GitHub Pages at the time had no TLS support. At least now for the few years I was using it. Currently, they do support TLS for their GitHub.io domain, but do not support it for custom domains.


## Hugo / AWS S3+CloudFront / Travis-ci.org

To work around the TLS issue on GitHub pages, I used a Hugo + AWS S3 + AWS CloudFront and published via [travis-ci.org](https://travis-ci.org).  You know what? 

* AWS TLS setup is fantastic.  Took about 10 seconds to set up a TLS cert.
* With travis-ci.org I set up some [basic spell-checking](https://github.com/client9/misspell) and other lints before publishing -- just like real software.
* For a while I had branch-based deploys and get true previews of the site.  I could publish a draft version of the site and if I liked it, merge to the live site.

The downsides are:

* I have pay $1.25 / month for AWS stuff.  Hey $1.25 isn't bad.  Almost everything on AWS has no minimum, except Route53 where there is minimum of $1.00/month. So I'm paying $1.00/month to serve my $0.25 of traffic and storage.  This smells odd.
* AWS is fussy and very complex.  Once you got it locked in, it is great, but until then...
* Cache invalidation.   My site is small and each page has zero extra loads so I don't care that much, but really this is something that should be dealt with. 
* Possible "upsize surprise" where I'll get a really big bill since some article was really popular (yeah right, keep dreaming).

I have mixed feelings about travis-ci.  I mean it's free so really I can't complain.

* I can download hugo and other tools, and build the site, push to S3 in under 2 seconds.  But travis overhead is often 30 seconds or more, and the log is filled with junk I shouldn't need to care about.  Then there is the latency of travis just starting.  And sometimes it doesn't work at all.
* Generally no idea how to replicate the travis environment locally, so it's lots of "push this and see if it works"
* The default push to S3 is slow.  It's so slow I wrote my own.


## Hugo / GitHub Pages / Cloudflare / Travis-ci.org

I decided the complexity and cost of AWS is not worth it for something so simple. And moved my DNS and TLS to Cloudflare, and my origin back to GitHub Pages.

I'm oddly surprised at the great support for GitHub pages with Travis-CI.  It's faster and simpler than pushing to S3 but yet does more. Travis takes the hugo output and over-writes everything in client9.github.io repo in one git commit.   This makes the deploy atomic (I think).   Travis-ci also blew out for 4 hours today, so there's that too.  Hey it's free.

CloudFlare's TLS like AWS has a super easy TLS setup.  Yay!  Since I know someone will ask, "How does CloudFront compare with CloudFlare"...  Both made it simple to deliver TLS content, both seemed better than not using a CDN.  So both "met my requirements" for this project.  Your mileage may vary.

Hugo is still great.

## What's next?

* The complexity of GitHub / Travis-CI / GitHub Pages / CloudFlare gives me pause, but I can live with it... for now.
* [Netlify](https://www.netlify.com) looks interesting, as it might replace Travis-CI / GitHub Pages / CloudFlare to some degree.
* Which may or may not wrap [Firebase](https://firebase.google.com)

The biggest issue is being able to write... anywhere.  With the extra condition that I don't manage any servers.  GitHub has really let me down here. It's so close, yet so far. They integrated a nice code editor into their site, but... it's complete crap on mobile (and even on the desktop it is crippled).  They seem to really be doubling down on their desktop [Atom editor](https://atom.io), and I'm not sure what to make of that.

I currently using some unnamed Git app on iOS.  It works, but is not ideal.

Given a static site, a static editor would be a perfect match.  GitHub / Google / AWS provide all the APIs you need to making a browser-based editor using just Javscript, especially with great components like [Quill JS](https://quilljs.com/) and [CodeMirror](https://codemirror.net).  I started down that road but quickly lost a Saturday and realized I bit off more than I could chew.

Fortunately, I discovered [Netlify CMS](https://www.netlifycms.org).  It's early days for this project but appears to work. Well, in fact, I'm writing this article using it right now.   We will see what happens when I hit Save.


Update: After filing 3 bugs, Save and Netlify CMS works!  More details to come.
