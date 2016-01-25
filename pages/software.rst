.. link: 
.. description: 
.. tags: 
.. date: 2014/02/08 12:19:51
.. title: Software
.. slug: software

BCCP develops open-source software for use in cosmology. Here are some
of our projects:

====

`SEP`_
------

SEP is a Python and C library for source detection and photometry,
adapted from the SourceExtractor code base. It makes the
SourceExtractor background and detection algorithms available directly
from Python and (eventually) Julia. `SEP on GitHub`_.

====

.. image:: /images/sncosmo.png
   :height: 40px
   :align: left

`SNCosmo`_
----------

SNCosmo is a Python package for supernova cosmology data analysis and
simulation. `SNCosmo on GitHub`_.

====


`Dierckx.jl`_
-------------

Dierckx.jl is a package for 1-d and 2-d splines in Julia. It's a
wrapper of the dierckx Fortran library available from NETLIB, the same
library underlying the spline classes in scipy.interpolate.

====

`cosmoxi2d`_
------------

cosmoxi2d provides theoretical predictions for the two-dimensional galaxy correlation function.  This code was used to analyze `DR9 <http://adsabs.harvard.edu/abs/2012MNRAS.426.2719R>`_, `DR10, and DR11 <http://adsabs.harvard.edu/abs/2014MNRAS.439.3504S>`_ the SDSS-III BOSS CMASS galaxy sample and derive cosmological constraints on the geometry of the universe and the growth rate of cosmic structure.

====

`nbodykit`_
-----------

nbodykit provides a set of tools for analyzing clustering of simulation and observational cosmology data sets. A set of python scripts, built on top of efficient parallel C implementations allow the user to calculate power spectrum, correlation function, clustering and matching halos for large and small data sets at high fidelity. The design allows easy migration of the algorithms implemented in nbodykit to new types of data sources. 

====

`kdcount`_
----------

kdcount is a simple python extension for brute force pair-counting of point data sets. Pair-counting is the fundamental of estimating correlation functions from imaging and spectroscopy survey catalogues of quasars, galaxies, and Lyman-alpha forest.

====

`python-mpi-bcast`_
-------

python-mpi-bcast is a method to launch parallel Python applications of very large scale on super-computers. The method was originally developed for nbodykit, but is sufficiently general to be used to improve the start-up time of any large scale parallel python application.

====

`fastpm`_
---------

fastPM is an approximated solver for N-body gravity problems. fastPM provides the foundation for large computational scale numerical experiements of large cosmic structure formation. 

.. _`Dierckx.jl`: http://github.com/kbarbary/Dierckx.jl
.. _`SEP`: http://sep.readthedocs.org
.. _`SEP on GitHub`: http://github.com/kbarbary/sep
.. _`SNCosmo`: http://sncosmo.github.io
.. _`SNCosmo on GitHub`: http://github.com/sncosmo/sncosmo
.. _`cosmoxi2d`: https://github.com/bareid/cosmoxi2d
.. _`nbodykit`: https://github.com/bccp/nbodykit
.. _`fastPM`: https://github.com/rainwoodman/fastPM
.. _`kdcount`: https://github.com/rainwoodman/kdcount
.. _`python-mpi-bcast`: https://github.com/rainwoodman/python-mpi-bcast
.. _`pfft-python`: https://github.com/rainwoodman/pfft-python

