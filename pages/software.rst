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

`kdcount`_
----------

kdcount is a simple python extension for brute force pair-counting of point data sets. Pair-counting is the fundamental of estimating correlation functions from imaging and spectroscopy survey catalogues of quasars, galaxies, and Lyman-alpha forest.

====

`pypm`_
--------------

pypm is a set of python modules for particle mesh calculation with MPI parallel python. It also provides tools
to measure power spectrum, and construct Friend-of-Friend halso from n-body simulations.

====

`pfft-python`_
--------------

pfft-python is a thin python extension layer of the massively parallel faster fourier transformation library, PFFT. Fast Fourier Transform is the core component of Particle-Mesh based gravity solvers, which simulate the formation of large scale structure, galaxies and dark matter halos.

.. _`Dierckx.jl`: http://github.com/kbarbary/Dierckx.jl
.. _`SEP`: http://sep.readthedocs.org
.. _`SEP on GitHub`: http://github.com/kbarbary/sep
.. _`SNCosmo`: http://sncosmo.github.io
.. _`SNCosmo on GitHub`: http://github.com/sncosmo/sncosmo
.. _`cosmoxi2d`: https://github.com/bareid/cosmoxi2d
.. _`kdcount`: https://github.com/rainwoodman/kdcount
.. _`pfft-python`: https://github.com/rainwoodman/pfft-python

