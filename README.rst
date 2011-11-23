=============
hyde-buildout
=============
:Info: See `github <http://github.com/elbart/hyde-buildout>`_ for the latest source.
:Author: Tim Eggert <tim@elbart.com>

Description
===========

This project provides a basic buildout setup to start with Hyde_.

.. _Hyde: http://github.com/hyde/hyde

Prerequesites
=============

You need python >= 2.6 installed on your system.

Building
========

There is a simple Makefile which wraps the buildout hazzle and helps to get started very easily. 
Just run the following commands to build a basic skeleton::

    make
    make new

Now you have created the whole environment to get started with the Hyde project.
You can start modifying the templates and so on within the ``sources`` directory.

Running
=======

To run the builin http server, just use this command::

    make run

Now you can surf to ``http://localhost:8080`` in your browser to watch your site.

Publishing
==========

@TODO
