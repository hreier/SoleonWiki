======
Sphinx
======

Description how to generate the soleon documentation.


Prerequisites
-------------

- Python installation

  Download Python from https://www.python.org/downloads/ and install it.
  
- Clone documentation Repository (https://github.com/hreier/SoleonWiki)
  

Prepare build system
--------------------

Create a Python virtual environment and install the required tools. For that, open a command line terminal, 
cd into the directory you just have cloned, and run the following commands::

    $ python -m venv .venv
    $ .venv\\scripts\\activate
    
    (.venv)$ python -m pip install sphinx
    (.venv)$ pip install furo

.. note::

   This installs Sphinx and furo theme into the virtual environment

Now you may need to install support for missing Sphinx and Furo extensions:: 

    (.venv)$ pip install sphinx.ext.autodoc
    (.venv)$ pip install sphinx.ext.extlinks
    (.venv)$ pip install sphinx.ext.intersphinx
    (.venv)$ pip install sphinx.ext.mathjax
    (.venv)$ pip install sphinx.ext.todo
    (.venv)$ pip install sphinx.ext.viewcode
    
    (.venv)$ pip install furo.sphinxext
    
    (.venv)$ pip install myst_parser
    (.venv)$ pip install sphinx_copybutton
    (.venv)$ pip install sphinx_design
    (.venv)$ pip install sphinx_inline_tabs
    (.venv)$ pip install sphinx_toolbox.collapse
    
    (.venv)$ pip install sphinx-autobuild


Build the documentation suite
-----------------------------

Execute **start_venv.bat** from the root directory of the cloned documentation repository. This opens a command line terminal.

To build respective rebuild the html documentation::

    (.venv)$ make html

This generates the HTML data into **/docs/build/html** folder.

You may need to clean the generated documentation by doing::

    (.venv)$ make clean

.. note::

   In some cases the refresh of the HTML data after changes of the data may not work. In this case the clean command is useful to force the compiler to regenerate all files.

Automatic build the documentation suite
---------------------------------------

Call **autobuild.bat** if you prefer automatic building of the html documentation::

    (.venv)$ autobuild.bat

This will start a server at http://127.0.0.1:8000 and the inet browser to show the documentation.
This start watching for changes in the source/ directory. When a change is detected in source/, the documentation is rebuilt and any open browser windows are reloaded automatically. 

.. note::

   KeyboardInterrupt (ctrl + c) will stop the server..





Links
-----

The Soleon documentation suite generator uses **Sphinx**. This the documentation:

    - Sphinx documentation: https://www.sphinx-doc.org/en/master/
    - Sphinx tutorial: https://www.sphinx-doc.org/en/master/tutorial/index.html


The Soleon documentation uses **furo** as theme:

    - furo documentation: https://pradyunsg.me/furo/
    - github: https://github.com/pradyunsg/furo/tree/main/docs

.. note::

   Furo documentation is an excellent example showing the possibilities of the documantation generator.
   Especially `Kitchen Sink <https://pradyunsg.me/furo/kitchen-sink/>`_ shows nice examples. 


Documentation concerning the Sphynx Autobuild:

    https://github.com/sphinx-doc/sphinx-autobuild