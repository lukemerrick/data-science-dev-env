# Docker Cookiecutter Data Science
**Goal: enable a Docker-first development workflow to reduce headaches and 
maximize reproducibility.**

## Changes to typical structure
Having used the "vanilla" template for a while, the major pain points this 
environment tries to solve are:
1. Overcomplexity of the layout. Complex systems should evolve from simple 
ones, not be created when we initialize a new project. For example:
    - Using an s3-synced folder to store data is pretty basic/hacky, no need to
    divide it into four separate subdirectories, we can stick to just "raw" and 
    "processed" with a "misc" folder just in case.
    - Most one-off projects don't need formal docs and tests from inception.
    Here we're going for more of a "kaggle-style" approach. Just put important
    info in the README.
    - `src` has a large number of subpackages, while most code can probably
    fit into top-level modules in simpler projects.
2. Use of python virtual environments instead of docker. Thus this project
is a fork of the Docker Cookiecutter Data Science project.