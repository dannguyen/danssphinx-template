# TODOS

## Priority

- [ ] Add/learn some more roles


## Config

- How do I get "Edit Github Pages" to show up?

## Style/Convention

Should chapter indexes be referred to as `chapter-index.rst`, instead of just `index.rst`?
- Arguments for `index.rst`:
    - predictable convention    
- Against:
    - doesn't remove boilerplate of `/content/001-examples/index` reference, i.e. can't do `/content/001-examples` (or can I? is there a conf.py setting I need to deal with?)

## Logistics/Migration

- Has to be a better way of adding to a repo subdir without using git clone (which requires manual removal of .git)
    - Use `npx degit`: `npx degit https://github.com/dannguyen/danssphinx-template _sphinx`
    - Or use: `git clone --depth=1 --branch=master https://github.com/dantalk/youtube-dl-command-line-intro.git _sphinx && rm -rf _sphinx/.git`
`
- Write make task to remove boilerplate
    - [X] Wrote `make fresh`, which is quite dangerous

- Move boilerplate guide to its own subdir, like content/boilerplate/000-hello-world
    - [?] probably won't do this


## Visual styling

- Figure out how to include custom stylesheets
- :any:/:ref: styling
    - Figure out wtf is going on with: 
    
            Sphinx Docs: :any:`sphinx:any`


