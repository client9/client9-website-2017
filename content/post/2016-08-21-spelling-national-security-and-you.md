+++
aliases = [ "20160821" ]
date = "2016-08-21"
title = "Spelling, DevOps, and Data Sciences"
+++

or we proccessed 20 billions words from Reddit, so it looks like you know how
to spell.

At Signal Sciences we have a lot of code, 

But we also a lot of text.  Web-based, customer-facing documentation is
large part of this, but we also have huge of amounts of internal documentation,
`man` pages, `-help` output, READMEs, change logs and code-comments both
closed and open source.  Many of the engineers do rotations on customer
support.  When customer sends in a question, we want the answer to round trip
back and FAQ entry on the website is as fast as possible.  How can we enable a
"culture of shipping" in our customer-facing documentation?

Part of that is spelling.  Spelling isn't everthing.  It's not grammar and
it's not editorial style, but it's fundamental to quality or at least to
percieved quality.  Most spelling programs are completely unusable on source
code and technical documentation.  Some GUI-based editors might have some
better spelling support, but all require interaction and don't have a batch
mode.  This rules out any use in be used in a continuous
deployment/integration pipeline.  Then every time a new word is encountered, a
error is made.  These false positives, erode trust, eventually the solution is
to pull it out the pipeline.  If this sounds similar to legacy web application
firewalls, stayed tuned)

Instead of trying to know every possible word in advance, look for common
misspellings and fix the source code with the correct.  We first saw this at [
].  Running this on some existing project turned up dozens of misspellings.
But on large code bases it is slow:  it's based on linear iteration of regular
expressions using `sed` and other posix utilities.   The more checks, the
slower it gets.   We wanted something htat could be run as a pre-commit check
and not annoy the authors. 

Enter the creatively named [misspell](https://github.com/client9/misspell).
It's written in [golang](https://golang.org/), like most of our code base.

[strings.Replacer](https://golang.org/pkg/strings/#Replacer) is a modified
version of the [Aho-Corasick algorithm](https://en.wikipedia.org/wiki/Aho–Corasick_algorithm) which matches (and corrects) multiple
sub-strings simultaneously.  But it doens't know what a _word_ is.  So if the
input document is changed, we go back and check line by ine to make sure we
didn't correct a URL or a unforuntate base64 string.

But what should it correct?  We started out with a list from
[wikipedia](https://en.wikipedia.org/wiki/Commonly_misspelled_English_words),
which had to be highly edited to remove false positives and words.  It's also
not clear why or how this list is updated.  But how can we can _a lot_ of
rules.  Where can we find a lot of misspellings and use that to automatically
generate a list of the top misspellings.  


### Reddit

[Reddit] has kindly published it's [entire comment history](https://archive.org/details/2015_reddit_comments_corpus) in collaboration with [Internet Archieve](https://archive.org).

* Download the reddit dump files
* Extract words.
* Perform frequency counts
* Perform a rough scoring and clustering on the words.
* Take the top ones.
* Profit

Interms of compute time, on 4 cores this whole process takes about day.
Incremental changes are much faster.  Each step
was "files in, files out", so incremental changes wouldn't need to start all
over.  It in the end, the entire archive contained about 20 billions words,
resulting in over 7 million unqiues.  Afer scoring, this boiled down to a
25,000 misspelling rules.

### Interesting Challenges

Like all data sciences projects it's never just that easy.

* Some misspellings like "receive" are so common the clusting algorihm would
  match other misspellings to it, instead of the correct "recieve"
* Some correctly spelled words were match to other correctly spelled words.
  To limit this we had to exclude "typos" that were from a known-good list
  using the [aspell/scowl lists](http://app.aspell.net/create)
* But even these word lists and other open source dictionaries hadsome occasional errors (with no
  obvious way making corrections)
* Words from other languages, in particular Italian and Spanish sometimes are
  corrected. 
* Brand names, trademarked names, bands, characters or items from works of
  fiction had to be manually removed.
* Common variable names like "serverid", and code library names ("reactjs")
  had to added as valid words to prevent unfortunate corrections.

In otherwords, there is a lot of manual post-processing.

### How does it do?

Even with 32,000 rules, the startup time is under 200ms and processes over
1000 files per second.  This more than fast enough for a pre-commit hook and
build pipelines.  For real-time editors, the startup time is a bit slow and
needs improving.

So far it's  correct dozens of existing errors in our own text, and dozens more in third party packages from pull requests we've made. And it
regularly prevents misspellings from going out to prod.

Most importantly, the authors all love it and it makes them... better authors
with no cost to them.

There's still lots to do.  The reddit corpus is great, but definitely skewed
to certain topics and words.   The same analysis has been done to entire
wikipedia dataset.  First results show... the errors are completely different.
GitHub's entire history is now in Google BigQuery.  That would be a rich set
to mine or mistakes actually programmers make.


### So why is this really on the Signal Sciences blog?

The misspelling project mirrors many of value at Signal Science towards Web Application attack detection

* treating false positives as important as false negatives
* a rejection of primitive regular expression based detection
* making "secure by default"
* CI/CD build pipelines
* Pushing bug (spelling) detection as close to the developer as possiblea
* Dedication to improving our supply chain 
* Usable defense based on real-attacks (real misspellings)
* Rapid turnaround on false positives
* Integrations with external tools
* Data sciences and model building
* User interface, even for command-line applications

Sure, it's just spelling, but represents a general attitude that we can do
better.  For our text, for our code, for our employees, for our customers and
for web application security.

