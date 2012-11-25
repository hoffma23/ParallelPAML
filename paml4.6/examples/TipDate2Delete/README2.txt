readme2.txt
28 July 2011, Ziheng Yang

This examples dates divergences of sequences with sample dates, such as viral sequences.
The control file is mcmctree.ctl, and you run the program mcmctree using it, for example, with 

   ..\..\bin\mcmctree (on Windows)

   ../..\bin/mcmctree (on Macs or Linux)

Please look at the control file mcmctree.ctl, the paml/mcmctree
documentation in the doc/ folder, and perhaps also the step-by-step
manual for running mcmctree.

The following line in the control file specifies the TipDate model.  The second number is the time unit.  

       TipDate = 1 100  * TipDate (1) & time unit

When you run the default analysis, you will see the following printout on the monitor.

TipDate model
Date range: (94.00, 56.00) => (0, 0.38).  TimeUnit = 100.00.

The program scans the sequence names, and take the last field in the
sequence name as the sampling date.  The most recent sample date will
be time zero, and the other times will be rescaled using the time
unit.  For example the sequences in the example dataset are from 1994
to 1956, with 1994 becoming time 0, and 1956 becoming 0.38 as one time
unit is specified to be 100 years.

You should specify a prior on the age of the root of the tree.

      RootAge = B(0.8, 1.2, 0.01, 0.02)  * root age constraints

The above means that the age of root is between 0.8 and 1.2 time
units, with those bounds violated with probability 1% and 2&.

Other things that are important include the prior on the substitution rate 

      rgene_gamma = 1 20   * gamma prior G(a, b) for rate for genes

Note that the gamma distribution G(alpha, beta) has shape parameter
alpha and scale parameter beta.  You specify alpha depending on how
much confidence you have (with alpha = 1 to be a diffuse prior and
alpha = 5 or 10 to be informative priors, say), and the mean
alpha/beta so that the rate is at the right range.  Here alpha = 1
means a diffuse prior, while alpha/beta = 0.05 means 0.05 changes per
site per time unit, or 0.0005 changes per site per year (since the time
unit is 100 years).

The clock model may also be important.

      clock = 1    * 1: global clock; 2: independent rates; 3: correlated rates

//end of file
