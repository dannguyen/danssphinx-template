# TODOS

- Has to be a better way of adding to a repo subdir without using git clone (which requires manual removal of .git)
    - Use `npx degit`: `npx degit https://github.com/dannguyen/danssphinx-template _sphinx`
    - Or use: `git clone --depth=1 --branch=master https://github.com/dantalk/youtube-dl-command-line-intro.git _sphinx && rm -rf _sphinx/.git`
`
- Write make task to remove boilerplate
    - [X] Wrote `make fresh`, which is quite dangerous

- Move boilerplate guide to its own subdir, like content/boilerplate/000-hello-world
    - [?] probably won't do this
