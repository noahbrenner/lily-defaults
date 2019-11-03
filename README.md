lily-defaults
=============

> Noah Brenner's default config for LilyPond scores -- 
https://github.com/noahbrenner/lily-defaults

[LilyPond][] is an awesome tool for notating music, though not all of its defaults are ideal. **lily-defaults** provides more modern stylistic defaults for your LilyPond projects.

The purpose of this project is *not* to prescribe the way things must be done, but to provide more intuitive defaults. Settings defined here are easy to reverse. Starting from these defaults can be useful even when you reset some of them: By explicitly changing an intuitive default, you make your intentions clear.

Usage
-----

### Get the code

First, you need to include this repo in a subdirectory of your LilyPond project. I recommend using [git subtrees][git-subtree] (see this [blog post][git-subtree-blogpost] if you're not familiar) so that you can update   to the current version later if you'd like, while also saving all the files directly in your own project.

```bash
$ cd /path/to/your/project/
$ git remote add lily-defaults git@github.com:noahbrenner/lily-defaults.git
$ git fetch lily-defaults
$ git read-tree --prefix=lily-defaults/ -u lily-defaults/master
$ git commit -m "Add lily-defaults subtree"
```

If you later want to fetch updates to lily-defaults, here's one way to do that:

```bash
# Fetch updates from GitHub
$ git fetch lily-defaults

# Merge them in
$ git merge --squash -s subtree lily-defaults/master
# To help git match the correct directory, the above command can also specify
# the subtree's subdirectory. That would mean running this instead:
$ git merge --squash -Xsubtree=lily-defaults lily-defaults/master

# Then commit the changes
$ git merge -m "Update lily-defaults subtree"
```

**Other options:**

* Use [git submodules][git-submodule]
* Just download the [zip file of the master branch][zip-master] and unzip it in your project directory
* Take a look at [git-subrepo][], which streamlines the process of working with git subtrees

### Use it!

Include one of `lily-default`'s settings at the top of any of your `.ly` entry files (I recommend doing this right after your `\version` and `\language` declarations).

```lilypond
\include "./lily-defaults/all.ily"
```

lily-defaults entry files
-------------------------

All of the `.ily` files in the root directory of lily-defaults are entry files. These entry files don't define any settings of their own, they're simply curated collections which `\include` various files found in the subdirectories.

* **`all.ily`** - Use **all** the settings that lily-defaults defines. This might not be what you want, but it can be a handy grab bag.
* **`core.ily`** - Settings that I don't expect to be controversial and that aren't too specific to a particular use case or instrument.

Of course, you can also selectively `\include` the individual files that these entry files bundle up. For example:

```lilypond
\include "./lily-defaults/core/beaming.ily"
```

Reverting to LilyPond's defaults
--------------------------------

Individual settings are fairly straightforward to reverse (take a look at the code to see how they were implemented and do the opposite). For any that would take a little longer to figure out, see below:

### Beaming

lily-defaults prescribes that beams only connect notes that are within the same beat. If you instead want to use LilyPond's defaults for a particular time signature (e.g. beaming 4 eighth notes in 4/4 time), write the following sometime after you've `\include`d lily-defaults. Note that these changes must be inside a `\layout` block:

```lilypond
\layout {
  %% Use LilyPond's default beaming for 4/4 time
  \revertTimeSignatureSettings 4/4

  %% Allow, for example, beaming 3 eighth notes in 3/4 time
  \set Timing.beamHalfMeasure = ##t
}
```

Notably absent settings
-----------------------

### `\pointAndClickOff`

I don't frequently use the [point-and-click][] feature, but I don't believe a config file is the best place to disable it. I'd rather not have to change a file when the same thing can be done [from the command line][no-point-and-click]. Just run:

```bash
$ lilypond -dno-point-and-click your-lilypond-file
```

I highly recommend using a Makefile for your LilyPond projects. Simply include this command line flag in your Makefile, and now you have both options available without making any changes to your project files.


[LilyPond]: http://lilypond.org
[git-submodule]: https://git-scm.com/book/en/v2/Git-Tools-Submodules
[git-subrepo]: https://github.com/ingydotnet/git-subrepo
[git-subtree-blogpost]: https://medium.com/@porteneuve/mastering-git-subtrees-943d29a798ec
[git-subtree]: https://git-scm.com/book/en/v2/Git-Tools-Advanced-Merging#_subtree_merge
[point-and-click]: http://lilypond.org/doc/v2.18/Documentation/usage/point-and-click
[no-point-and-click]: http://lilypond.org/doc/v2.18/Documentation/usage/command_002dline-usage#advanced-command-line-options-for-lilypond
[zip-master]: https://github.com/noahbrenner/lily-defaults/archive/master.zip
