# Minimal makefile for Sphinx documentation
#

.PHONY: help Makefile fresh
# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build
#   if this sphinx template is in a subdirectory, change the prior line to:
#	rsync -ac _build/html/ ../docs
PUBLISH_SITE_DIR		  = ./docs
PUBLISH_DOCS_DIR 		  = ../docs

.DEFAULT_GOAL := help

define BROWSER_PYSCRIPT
import os, webbrowser, sys

from urllib.request import pathname2url

webbrowser.open("file://" + pathname2url(os.path.abspath(sys.argv[1])))
endef
export BROWSER_PYSCRIPT


# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)


docs: html singlehtml

	@echo '...rsyncing all contents of docs/html to ../docs (for subdir of a repo project)'

	rsync -ac $(BUILDDIR)/html/ $(PUBLISH_DOCS_DIR)
	rsync -ac $(BUILDDIR)/singlehtml $(PUBLISH_DOCS_DIR)


# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
#	@echo '...Deleting all _static, etc directories in docs/'
#	rm -rf docs/_* docs/html
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo '...rsyncing all contents of docs/html to docs (for Github pages)'








fresh:
	@echo Cleaning out content and docs dir
	@rm -rf ./docs
	find ./content -type d -not -path './content' -maxdepth 1 \
	  | while read -r dname; do rm -rf $${dname}; done


site: html singlehtml

	@echo '...rsyncing all contents of docs/html to docs (for Github pages)'

	rsync -ac $(BUILDDIR)/html/ $(PUBLISH_SITE_DIR)
	rsync -ac $(BUILDDIR)/singlehtml $(PUBLISH_SITE_DIR)
