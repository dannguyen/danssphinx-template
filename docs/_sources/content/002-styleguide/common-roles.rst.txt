*******************
Commonly used roles
*******************


``:any:`` cross-reference catch-all
===================================


Link to a different chapter page:

Code:

.. code-block:: rst

    :any:`/content/001-examples/index`



Rendered:

    :any:`/content/001-examples/index`



Intersphinx linking:



Code:

.. code-block:: rst

    :any:`sphinx:any`

Rendered (TODO: why is styling so messed up):

    :any:`sphinx:any`




.. - :ref:`sphinx:ref-role`
.. - :ref:`:ref: role <sphinx:ref-role>`
.. - :doc:`sphinx:usage/extensions/intersphinx`
.. - :doc:`Intersphinx <sphinx:usage/extensions/intersphinx>`












Mark filenames with ``:file:``
==============================

For filenames, use the `:file: <https://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html?highlight=%3Afile%3A#role-file>`_ directive, instead of the generic inline code directive (e.g. double tildes)

.. code-block:: rst

    Look at :file:`./contents/index.rst`


Look at :file:`./contents/index.rst`



Mark keyboard actions with ``:kbd:``
====================================

https://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html#role-kbd

.. code-block:: rst

    Press :kbd:`Cmd+Tab` to switch apps quickly


Press :kbd:`Cmd+Tab` to switch apps quickly



Mark regexes with ``:regexp:``
==============================

.. code-block:: rst

    The pattern :regexp:`\d{4}` matches exactly 4 digits

https://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html#role-regexp


The pattern :regexp:`\d{4}` matches exactly 4 digits
