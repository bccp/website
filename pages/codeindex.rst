.. link: 
.. description: 
.. tags: 
.. date: 2014/02/08 12:19:51
.. title: Berkeley Cosmology Code Index
.. slug: codeindex

Here we provide links and information on publicly available codes useful
for the cosmology research community. Please send
suggestions/additions/corrections by opening an `issue on github <https://github.com/bccp/website/issues/new>`__ or through our contact page.

Boltzmann codes for cosmological perturbations.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Boltzmann codes input cosmological parameters and return predictions the
cosmic microwave background, the [non-]linear matter power spectrum, and
possibly other observables as well.

-  `camb <http://camb.info/>`__

   -  Online help:
      `cosmocoffee <http://cosmocoffee.info/viewforum.php?f=11>`__
   -  Language: Fortran 90
   -  Dependencies: None
   -  References: `CAMB
      notes <http://cosmologist.info/notes/CAMB.pdf>`__ and the
      `readme <http://camb.info/readme.html>`__
   -  Features:

      -  `CAMB sources <http://camb.info/sources/>`__ "for number
         counts, lensing and dark-age 21cm power spectra, plus thermal
         history, perturbed recombination, CMB cross-correlations"
      -  Integrated with `CosmoMC <http://cosmologist.info/cosmomc/>`__
         for cosmological parameter estimation.

   -  Notes: well-tested and widely used; can be difficult to modify.

-  `CLASS <http://class-code.net/>`__

   -  Online help:
      `github <https://github.com/lesgourg/class_public/issues>`__
   -  Language: C with Python and C++ wrappers.
   -  Dependencies: None
   -  References: `8 papers <http://class-code.net/>`__; cite `this
      paper <http://adsabs.harvard.edu/abs/2011JCAP...07..034B>`__ at
      least.
   -  Features:

      -  `ClassGAL <http://cosmology.unige.ch/content/classgal>`__:
         computes power spectrum and correlation function in linear
         perturbation theory with all relativistic corrections.
      -  Integrated with `Monte Python <http://montepython.net/>`__ for
         cosmological parameter estimation.

Parameter Estimation Algorithms.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Cosmologists frequently estimate joint constraints on `nuisance
parameters <http://en.wikipedia.org/wiki/Nuisance_parameter>`__ and `the
cosmological parameters of
interest <http://en.wikipedia.org/wiki/Lambda-CDM_model>`__. There are
many algorithms in use to efficiently sample the parameter space; a
non-exhaustive list focused on cosmology applications is provided here.

-  `Metropolis-Hastings <http://en.wikipedia.org/wiki/Metropolis%E2%80%93Hastings_algorithm>`__
-  Affine Invariant Markov chain Monte Carlo Ensemble sampler

   -  `Algorithm described in Goodman and
      Weare <http://msp.org/camcos/2010/5-1/p04.xhtml>`__
   -  Implemented in `emcee <http://dan.iel.fm/emcee/current/>`__
   -  Implemented in
      `CosmoHammer <http://www.cosmology.ethz.ch/research/software-lab/cosmohammer.html>`__;
      see `their paper <http://arxiv.org/abs/1212.1721>`__ for an
      example using cosmic microwave background data.

-  Multimodal nested sampling

   -  Implemented in
      `Multinest <http://ccpforge.cse.rl.ac.uk/gf/project/multinest/>`__:
      a Bayesian inference tool which calculates the evidence and
      explores the parameter space which may contain multiple posterior
      modes and pronounced (curving) degeneracies in moderately high
      dimensions.
   -  References:

      -  `Multimodal nested sampling: an efficient and robust
         alternative to MCMC methods for astronomical data
         analysis <http://xxx.lanl.gov/abs/0704.3704>`__
      -  `MultiNest: an efficient and robust Bayesian inference tool for
         cosmology and particle
         physics <http://xxx.lanl.gov/abs/0809.3437>`__
      -  `Importance Nested Sampling and the MultiNest
         Algorithm <http://xxx.lanl.gov/abs/1306.2144>`__

   -  Open source version (in progress):
      `nestle <https://github.com/kbarbary/nestle/>`__
   -  Implemented in
      `Polychord <http://ccpforge.cse.rl.ac.uk/gf/project/polychord/>`__,
      tailored for high dimensional parameter spaces with arbitrary
      degeneracies and multimodality. It utilizes slice sampling at each
      iteration to sample within the hard likelihood constraint of
      nested sampling.
   -  References:

      -  `PolyChord: nested sampling for
         cosmology <http://arxiv.org/abs/1502.01856>`__

-  `Diffusive nested sampling <http://arxiv.org/abs/0912.2380>`__
   combines nested sampling with Markov Chain Monte Carlo; excellent in
   lower dimensional spaces.
-  Population Monte-Carlo

   -  References:

      -  `Adaptive Importance Sampling in General Mixture
         Classes <http://arxiv.org/abs/0710.4242>`__

   -  Implemented in
      `CosmoPMC <http://www2.iap.fr/users/kilbinge/CosmoPMC/>`__

-  Hamiltonian Monte Carlo (or Hybrid Monte Carlo)

   -  References:

      -  `MCMC Using Hamiltonian
         Dynamics <http://www.mcmchandbook.net/HandbookChapter5.pdf>`__

   -  Applied to very high dimensional (~10^6) parameter space in
      `Bayesian physical reconstruction of initial conditions from large
      scale structure
      surveys <http://adsabs.harvard.edu/abs/2013MNRAS.432..894J>`__

-  Additional references:

   -  `Handbook of Markov Chain Monte
      Carlo <http://www.mcmchandbook.net/HandbookTableofContents.html>`__
   -  `Efficient sampling of fast and slow cosmological
      parameters <http://adsabs.harvard.edu/abs/2013PhRvD..87j3529L>`__.
      Describes a method for decorrelating fast and slow parameters,
      illustrated on the Planck likelihood and currently implemented in
      `CosmoMC <(http://cosmologist.info/cosmomc/)>`__.
   -  A `more comprehensive
      list <http://www.bayesian-inference.com/mcmc>`__ of Markov chain
      Monte Carlo (MCMC) algorithms available in a public R package,
      `LaplacesDemon <http://www.bayesian-inference.com/software>`__.
   -  `Comparison of sampling techniques for Bayesian parameter
      estimation <http://adsabs.harvard.edu/abs/2014MNRAS.437.3918A>`__.
      This paper compares Metropolis-Hasting sampling, nested sampling
      and affine-invariant ensemple MCMC sampling on both toy
      likelihoods and the WMAP 7-year likelihood.

Parameter Estimation Cosmology Codes.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  `CosmoMC <http://cosmologist.info/cosmomc/>`__
-  `CosmoHammer <http://www.cosmology.ethz.ch/research/software-lab/cosmohammer.html>`__
-  `CosmoSIS <https://bitbucket.org/joezuntz/cosmosis/wiki/Home>`__
-  `Cosmo++ <http://cosmo.grigoraslanyan.com/>`__
-  `Monte Python <montepython.net>`__

   -  Metropolis-Hastings
   -  Nested Sampling (through Multinest)
   -  EMCEE (through CosmoHammer)
   -  Importance Sampling

-  `CosmoPMC <http://www2.iap.fr/users/kilbinge/CosmoPMC/>`__
