# Dan's Sphinx Template [DansSphinxTemplate]

This is a bunch of examples of things I forget how to do in Sphinx. 

## Using it

To build the site in /docs folder:

```sh
$ make site
```

This assumes you're using Github Pages, set up to run in the /docs folder:

[https://dannguyen.github.io/danssphinx-template](https://dannguyen.github.io/danssphinx-template)

To build and deploy locally:

```sh
$ ./bake
```


### When it's a subdirectory

When this is a subdirectory of another repo, i.e. used to generate the Github pages for a project:

In the [Makefile](https://dannguyen.github.io/danssphinx-template), change:

```Makefile
rsync -ac _build/html/ ./docs
```

To:

```Makefile
rsync -ac _build/html/ ../docs
```


## Dependencies and plugins

```
$ pip install sphinx_rtd_theme
```

https://github.com/mgaitan/sublime-rst-completion#simple-table



## Good links

- [My prior attempt](https://github.com/dannguyen/sphinx-docs-hotttips)
- [Abridged Sphinx reStrucrturedText Primer](https://build-me-the-docs-please.readthedocs.io/en/latest/Using_Sphinx/OnReStructuredText.html)
- [2014 Thomas Cokelaer reST and Sphinx Cheatsheet](https://thomas-cokelaer.info/tutorials/sphinx/rest_syntax.html)
- [PDF cheatsheet](https://github.com/radeklat/sphinx-rest-cheatsheet)
- [Example of great book using RST: Python & OpenGL for Scientific Visualization](https://github.com/rougier/python-opengl)
