---
draft:true
title: The simple genius of dockerfiles
---

Why is [docker](https://docker.com) so successfull?  One reason is the simple genius of the Dockerfile.


Great example of "Perfer compile-time over run-time"

## Provisioning at Runtime

* Input is "an unknown filesystem, and list of running processes".  That's a big input space!   
* To save runtime cost, there is often a dependency analysis, and attempts to not duplicate work (often called "idempotent")
* To futher save on runtime cost, a list of attributes of each server is also saved in a central location or server
* Since the input space is very large, and due to the complexity of runtime scripts, best practice also dictates writing of tests.
* Since the goal is to "work on any system", these provisioning scripts often have a lot of complexity to handle all sorts of edge cases and special customer configurations

Frequently the entire process is run every 20m or so, causing more run-time operational complexity.

## What's in a Dockerfile?

* Specify the initial image, down to a specific SHA-256 hash
* `COPY` local files to the image
* `RUN` executes a single, stateless shell commands.
* Set and use `ENV` and command-line like arguments via `ARG`
* Some other image-specific book-keeping

And that's it.  Each `RUN` statement is "complete" and stateless.  The only state in the Dockerfile is the `WORKING DIR` to set the path.The whole spec fits on a few pages.

The fact that `RUN` is stateless and is done in a new shell each time is import.   You can set state of the command via the `ENV`, `ARG` or `CWD` command, but the command itself can not change state.  

  By convention   One command at-a-time, in a sequence.  `RUN` `RUN` `RUN`.  Either each statement worked, or the whole process failed.

## What's not in a Dockerfile?

Because you know the starting point, the following cruft is elinated:

* Checks to see if a file or package is already installed.
* Abstractions around basic OS functionality (If you want to install a package on a debian-based system, use apt-get and not an wrapper around it).
* Interrigations of OS to see capabilities (OS name, init.d vs. systemd, etc)
* All sorts of "idempotent" checks to make sure a command isn't run un-neccisarily.
* All work if the various servers or procsses are running, how they should be started or not. That's handled in a different phase
* Complicated graph-based dependency checks.  The next `RUN` depends on the previous one.
* The need complicated unit tests goes out the window, since the steps a linear and in sequence.  Either each step worked, or the whole process failed.

What you end up with is provisioning with

* No conditionals
* No looping
* No subshells or eval
* No shell-created variables
* No parallel processing
* No job control
* No checking of `$?` or other magic shell variables
* No functions
* No output direction or pipes (or very rarely anyways)

this forces a very simple iterative style of provising that is closer to what most humans hand-on-keyboard shells scripting is like.

And as another benefit, since is it's so simple, the need for a complicated test-suite also isn't needed.  You know exactly what command were executed.  Compare to runtime-based provisioning system, there are so many abstractions, best practice is to write system or unit tests.

Could you do this by just running a bash script?  Of course, but i find complexity creeps in really fast.  Mostly since when debugging, you'll run the script over and over again and you'll add in conditionals like "if already downloaded, then don't download again".   Since `docker build` always starts at the beginning, there is no cheating.

The forced "one command at a time"

## Advanced cases

What is you do "need" a loop over a set of variables in your Dockerfile?

Use a template and generate as many dockerfiles as you need.

The other problem is one of keeping up-to-date.  With runtime provisioning systems it's mostly easy to do.  With Docker, you the owner of the Dockerfile need to manage how to do patch updates.  This is a whole separate topic, but the solution, however you do it is *not done in production*, which is good.


## The Ugly

All this simplicity can be undone by using `COPY` to transfer a local shell script and then `RUN` it.    That's certianly good if re-using an existing bash script to do provisioning but it's not recommended.

One can `COPY` a remote file too.  It's much better to manually download the file, check it in, and then reference that.

And to optimize final image size, you have glue together a sequence of `RUN` statements into one.  If formatted correctly it's not too bad to read but is an extra step.


But this done outside of the production runtime, which is good.

Going from a completely unknown state to known good state. vs.
going from completely known initial state to another intial state

## Conclusion

Bash is a barrier to entry to most junior engineers.   A bigger barrier is specialized DSLs for provision.   With Docker these barriers are dropped so even new engineers on the team are able to be productive quickly and easily.  




This makes it
* shorter
* easy to read
* easy to audit

Or, much less complex, and much less a barrier.