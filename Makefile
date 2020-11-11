# Minimal makefile for Sphinx documentation
#

.PHONY: help Makefile clean clean-docs
.DEFAULT_GOAL := help


############################
# sphinx specific conf, i.e. local to the default source docs dir
############################
# You can set these variables from the command line.
SPHINXOPTS    = -n -v --color -W --keep-going
SPHINXBUILD   = sphinx-build
SOURCEDIR     = .
BUILDDIR      = ./_build


help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
#################
# /end sphinx specific conf
#################

define BROWSER_PYSCRIPT
import os, webbrowser, sys

from urllib.request import pathname2url

webbrowser.open("file://" + pathname2url(os.path.abspath(sys.argv[1])))
endef
export BROWSER_PYSCRIPT

BROWSER := python -c "$$BROWSER_PYSCRIPT"
GITHUB_DOCS_DIR = ./docs

clean: clean-docs clean-github

clean-docs:
	rm -rf $(BUILDDIR)

clean-github:
	rm -rf $(GITHUB_DOCS_DIR)

## can't call it "docs" because that's a name of a directory
build: clean-docs ## generate Sphinx HTML in the BUILDDIR
	mkdir -p $(BUILDDIR)
	$(MAKE) html
	$(BROWSER) $(BUILDDIR)/html/index.html

# TODO: it keeps running build from scratch??
github-docs: clean-github ## copies the build directory to docs/
	rsync -ac $(BUILDDIR)/html/ $(GITHUB_DOCS_DIR)


serve: build ## compile the docs watching for changes
	watchmedo shell-command -p '*.rst*' -c '$(MAKE) html' -R -D .
