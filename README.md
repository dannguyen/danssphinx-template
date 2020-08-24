# Dan's Sphinx Template [DansSphinxTemplate]

This is a bunch of examples of things I forget how to do in Sphinx. 

## Installing it


For use in a project:

```sh
$ git clone https://github.com/dannguyen/danssphinx-template _sphinx
```

For development or site documentation repo:

```sh
$ git clone https://github.com/dannguyen/danssphinx-template
```

## Using it


### As the repo itself

Assuming the docs *are* the Github repo, in order to publish to Github Pages with `./docs` as the source of Github Pages, i.e. building the site in `./docs`

To build the site in /docs folder:

```sh
$ make site
```

This assumes you're using Github Pages, set up to run in the `./docs` folder:

[https://dannguyen.github.io/danssphinx-template](https://dannguyen.github.io/danssphinx-template)



### As a subdirectory to an existing project

When this is a subdirectory of another repo, i.e. used to generate the Github pages for a project, e.g. `myrepo/_sphinxdocs`, and we want to target `myrepo/docs`, then run:


```sh
$ make docs
```


### bake helper

Run the `./bake` helper to make either `site` or `docs` and generate a webserver:

```sh
$ ./bake site
# or 
$ ./bake docs
```



## Dependencies and plugins

- sphinx_rtd_theme
- Sublime simple-table RST completer: https://github.com/mgaitan/sublime-rst-completion#simple-table



## Good links

- [My prior attempt](https://github.com/dannguyen/sphinx-docs-hotttips)
- [Abridged Sphinx reStrucrturedText Primer](https://build-me-the-docs-please.readthedocs.io/en/latest/Using_Sphinx/OnReStructuredText.html)
- [2014 Thomas Cokelaer reST and Sphinx Cheatsheet](https://thomas-cokelaer.info/tutorials/sphinx/rest_syntax.html)
- [PDF cheatsheet](https://github.com/radeklat/sphinx-rest-cheatsheet)
- [Example of great book using RST: Python & OpenGL for Scientific Visualization](https://github.com/rougier/python-opengl)
