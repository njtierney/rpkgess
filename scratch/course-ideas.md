# course ideas

Overall, people should walk away from this course being able to write their own package with:
- Three functions
- a README.md
- One test for each function
- Documentation for each function
- A dataset (that is documented)
- a vignette
- continuous integration
- pkgdown website
- put your package on the R universe

# Naming things

- naming functions
- naming packages (`pak::pkg_name_check` and `available::available`)


# Some function inspo

I really want the course to teach around some theme - perhaps it's around some yucky dataset? Perhaps some tools around cleaning any kind of ABS data? I think maybe some way around this might be that I will create some kind of "nearly" cleaned up ABS data, and the job of the participants will be somewhat mission driven:

- Here's this data - can you clean it up?
- Can you identify all the outliers, based on this formula?
- Can you tell me the name of the variables with missing data, and how many there are?
- Can you put all of this into a table? 
- Here's this slightly different data, can you make the same plot, but with ...
- Can you take the key colours out of our new logo and make the plot have colours like that?

OK great, can you send these files to your colleagues via email/slack/Teams? And can you make sure they are always up to date?

- Something about this should feel wrong. There is another way - the idea of exporting and sharing an R package!

Some ideas for functions to come away with:

1. Praise function
  - simple function
  - add glue
  - add syn
  - learn that sometimes a package exists already

2. Palette generator
  - download an image
  - make it work with ggplot2
  - should be useful for branding etc
  - https://github.com/njtierney/ideas/issues/44

4. table / summary generator
  - Take in some data, generate a summary table

5. ggplot plots
  - write a custom plot, based on input data only
    - state my opinions about ggplot functions

# Motivation

- This is a distillation of various parts of the "R Packages" book, which is itself a further distillation of the relevant parts of the official documentation, "https://cran.r-project.org/doc/manuals/R-exts.html#Creating-R-packages".

- The R packages book also does not really teach you how to write good functions. The goal of this "essentials" course is to teach you some fundamental features of functions. My belief is that if you know how to write a function, then the various decorations of an R package are actually pretty straightforward. Writing a function is a bit of a lifelong journey, but I think with some guidance you can be on a happy path.

# How to use it

- The book is designed to be used linearly - from start to finish. However, similar to the R packages book, the sections can be picked up as relevant.

- We start with a "story"/"roleplay" where you are a newly appointed data scientist at a fictional government department. You are handed a data cleaning script, and tasked with the following:

- read it, understand it
- make improvements
- share it with the team via email so they can stay up to date as you make changes

You are "The R Person" in the team, and have a bit of spare time to read this script. Something about this approach they have taken feels wrong - there is another way to share code, isn't there? In this part of the workshop, we have the following aims:

- Improve the script
- Identify the functions hiding within it
- Write the functions, iterating once or twice on the design
- Use the functions to do the analysis task
- Consider how you might share the analysis from here

Note that this is taking some inspiration from https://r-pkgs.org/package-within.html


How "R packages" structures things:

- R Code
- Data
- Other components (src, inst, tools, demo, exec, po, installed files, citation, config)
- DESCRIPTION
- Dependencies (namespaces + burdens)
- Dependencies (how to import functions, export functions, licensing)
- Testing
- Function documentation
- vignettes
- README.md, NEWS.md
- Website
- version control, CI, publishing to CRAN
- Run through getting a whole package together to submit to CRAN

My proposed structure (so far!)
- Installation time
  - R, rstudio, git
- Motivations for functions
- Writing R functions
  - inputs, outputs, naming things
  - iterating a function; it's writing; it's design
  - understanding how to edit and debug functions
- Bare bones pkg
  - 
- R code
- Documentation
- Dependencies --> DESCRIPTION
- README (literally just copy examples code) (also don't forget `build_readme()` to ensure the package is updated.)
- "The process" / "The workflow"
  - `load_all()` (keyboard shortcut)
  - iterate/play
  - check()?
  - https://r-pkgs.org/whole-game.html#review
- vignettes
- NEWS.md
- Website

Some potential hitches

- When renaming functions
  - regenerating namespace after changes being made to a function
  - need `load_all()` and `document()`
- Package structure and state
  - The whole, "source, bundled, binary, installed, in-memory" thing. I'm not sure participants really need this.
  
# package structure/state

To understand the "essentials" of R packages, you don't need to worry about this too much. The takeaway is that there's the version you edit when writing an R package. This is the thing you see on github. Then there's various forms of compression for installation.

Here's a brief explanation of the main possible structures

- source: the collection of text files as seen on github or when you are developing, e.g., https://github.com/njtierney/naniar
- bundled: essentially a platform-agnostic zipped file of the source. Sometimes called a "source tarball". Saved as `.tar.gz` or `.tar`
- binary: A single file, like a bundle, but specific to an operatoring system. So there will be specific binary for windows, macOS, and different flavours of linux
- installed: something from source/bundled/binary into a special "library" folder that contains all installed R packages. Slightly different folder structure.
- in memory: something you call `library(pkgname)`

# Some opinions / best practices


Every function has its own R script
  - use `use_r()`
  - This can change over time, e.g., you might start to group all your "summary" or "plotting" functions together. But is a good starting position because there is no real mental cost to having smaller functions having their own file.
  - Teach "jump to definition" / `ctrl + .` to search for function/file.

Setting people up with an .Rprofile with `use_devtools()` (https://r-pkgs.org/setup.html#personal-startup-configuration)

  - discuss interactive vs scripting?
  - show off adding the `usethis.description` options in .Rprofile?

Use `pak` to install packages
- stops "locked DLL" problem on windows
- use instead of `devtools::install_github()` and `install.packages()`

Frequency reduces Difficulty (https://martinfowler.com/bliki/FrequencyReducesDifficulty.html)
- run `devtools::check()` frequently
- We'll get it to happen on GH actions soon enough
- ERROR vs WARNING vs NOTE
- Error:
  - big problems; fix them
- Warning:
  - medium problems; fix them
- Note:
  - potential problems; can wait

# Running the course

- Help people be prepared and have their software installed, by having some optional sign up links via savvycal
  - get git, and other dependencies installed
  - windows computers


# using packages interactively: interactive mode vs repeat/scripting mode

- interactive: using devtools and usethis to set things up
- repeat/scripting: writing code that will be run by others

# setting up git

- I really would like to teach git alongside R package essentials, because I consider it an essential skill. Depending on the number of people who sign up, I might need 30 minutes - 60 minutes to do this.
  - get set up with username
  - set up a credentials

Benefits

- commits show incremental changes
- README.md
- GH actions
- issues as "todo" notes
- PRs as "safe" ways to make big changes
- Websites "self deploy"  

I should also work out a way to make installing git fun?


# Some questions

What/when do I explain `.Rbuildignore`?

- Essentially, I think this can come up in a section towards the end, perhaps under `checks` or `final things` or something?
- Basically it needs to say something like "to properly share your package we need to make sure that some files aren't included, as they aren't necessary for the package to work, even though they might be useful for you"
- use `usethis::use_build_ignore()` to handle this

Do we explain the difference between a library and a package?
- e.g., https://r-pkgs.org/structure.html#sec-library

Should I explain the benefit of surveying the existing landscape?

- Overall: 
 > If you’re only allowed to work on things that have never been touched, you’re likely looking at problems that are either very obscure or very difficult.
 
So, you should make an R package.

RStudio file hygiene
RStudio keyboard shortcuts

# When do you really __need__ an R package

