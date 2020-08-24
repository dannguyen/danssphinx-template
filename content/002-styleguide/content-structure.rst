*************************
File and directory naming
*************************


Content
=======

Main content goes into the ``./content`` directory.

Think of each content subdirectory as a **chapter**

Each chapter should have its own subdirectory in ``./content``, e.g. ``content/000-hello-world/``


::

    ├── Makefile
    ├── README.md
    ├── _build/
    ├── _static/
    ├── bake
    ├── conf.py
    ├── content/
    │   ├── 000-hello-world/
    │   ├── 001-examples/
    │   ├── 002-styleguide
    │
    ├── index.rst
    ├── make.bat
    └── requirements.txt

Assets subdirectories
---------------------

Each "chapter" subdirectory should be thought of as self-contained. So assets, like images and code files, should be subdirectories and referred to with relative paths, e.g. ``content/000-hello-world/images``


::

    ├── content/
        ├── 000-hello-world/
            ├── images/
            └── stuff/
