**********************
Plugins and extensions
**********************



Intersphinx
===========


https://docs.readthedocs.io/en/stable/guides/intersphinx.html


Set up :file:`conf.py`:

.. code-block:: python

    intersphinx_mapping = {
        'sphinx': ('https://www.sphinx-doc.org/en/master/', None),
    }


Sample references::

    - :ref:`sphinx:ref-role`
    - :ref:`:ref: role <sphinx:ref-role>`
    - :doc:`sphinx:usage/extensions/intersphinx`
    - :doc:`Intersphinx <sphinx:usage/extensions/intersphinx>`
