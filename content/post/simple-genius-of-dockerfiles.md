---
draft:true
title: "The simple genius of dockerfiles"
---

Why is [docker](https://docker.com/) so successfull?  One reason is the simple genius of the Dockerfile for use in provisioning.

## What's in a Dockerfile?

* `FROM` specifies the starting point or initial image
* `ADD` local files to the image
* `RUN` executes a single, stateless shell commands.
* `ENV` sets environment variables, which can be access both by the dockerfile and by commands specified with `RUN`
* `WORKDIR`sets the path for subsequent `RUN` and `ADD` commands
* `ARG` allows simple parameterization (command line arguments)
* Some other docker-specific book-keeping

And that's it.The whole spec fits on a few pages.  Compare that to other commercial configuration management tools.

One important detail is that `RUN` is stateless and a separate shell is used each time.  This means you can't change the dockerfile execution state.  This is different that say, hashicorp's Packer and Travis.ci which allow you to specify a list of shell commands, however they are run *in the same shell*.

By convention   One command at-a-time, in a sequence.  `RUN` `RUN` `RUN`.  Either each statement worked, or the whole process failed.



* Abstractions around basic OS functionality (If you
* Interigations of OS to see capabilities (OS name, 
* All sorts of "idempotent" checks to make sure a command isn't run un-neccisarily.
* All work if the various servers or procsses are running, how they should be started or not. That's handled in a different phase
* Complicated graph-based dependency checks.  The next `RUN` follows  the previous one.
* The need complicated unit tests goes out the window, since the steps are linear and in sequence.  Either each step worked, or the whole process failed.

What you end up with is provisioning that uses:

* No conditionals
* No looping
* No subshells or eval
* No shell-created variables
* No parallel processing
* No job control
* No checking of `$?` or other magic shell variables
* No functions
* No output direction or pipes (or very rarely anyways)

This forces a very simple iterative style of provising that is closer to what most humans hand-on-keyboard shells scripting is like.

And as another benefit, since is it's so simple, the need for a complicated test-suite also isn't needed.  You know exactly what command were executed.  Compare to runtime-based provisioning system, there are so many abstractions, best practice is to write system or unit tests.

Could you do this by just running a bash script?  Of course, but i find complexity creeps in really fast.  Mostly since when debugging, you'll run the script over and over again and you'll add in conditionals like "if already downloaded, then don't download again".   Since `docker build` always starts at the beginning, there is no cheating.

## Advanced cases

What if you need a loop over a set of variables in your Dockerfile?

Use a template and generate as many dockerfiles as you need.

The other problem is one of keeping up-to-date.  With runtime provisioning systems it's mostly easy to do.  With Docker, you the owner of the Dockerfile need to manage how to do patch updates.  This is a whole separate topic, but the solution, however you do it, is *not done in production*.  This is good.

## The Ugly

All this simplicity can be undone by using `ADD` to transfer a local shell script and then `RUN` it.    That's certianly good if re-using an existing bash script to do provisioning but it's not recommended.

The `COPY` command is similar to `ADD` but can also download files from URLs.  This not only makes your dockerfile dependent on the network to work, it also makes the output image non-reproducible.  And to do it right, you should check that the downloaded file matches a hash or matches a GPG signature.  That means complicated the provisioning script and installing all the machinery necessary for verification which can make your final image much larger. It's much better to manually download the file, manually verify it is correct, check it in, and then reference that.

Since each `RUN` command creates a new docker layer, a common optimization is to you have glue together a sequence of `RUN` statements into one.  This can dramatically reduce the final image size but certainly makes the dockerfile somewhat ugly.  However, if formatted correctly it's not too bad to read but is an extra step.

## Conclusion

Bash is a barrier to entry to most junior engineers.   An even bigger barrier are specialized DSLs for provisioning.   My using dockerfile for provisioning  these barriers are dropped so even new engineers on the team are able to be productive quickly and easily.  

This makes it
* shorter
* easy to read
* easy to audit

Or, much less complex, and much less a barrier.

I've tried to separate out `docker` vs. the `dockerfile` as they different.  One could parse a Dockerfile and use it to provision virtual-machines or AMIs or just to run commands.   One could make a "dockerfile provisioner" for Hashicorp's excellent Vagrant or Packer that didn't actually use docker.

