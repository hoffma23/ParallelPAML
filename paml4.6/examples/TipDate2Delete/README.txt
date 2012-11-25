readme.txt
30 October 2000, 24 January 2003 (modified), Ziheng Yang

Rambaut's TipDate model is implemented using the control variable 
TipDate = 1.  With this option, the sequence names have sampled dates
as the last field in the sequence name.  For example the sequence Brazi@82
was sampled in 1982, or the sequence CAA24271A/duck/Ukraine/1/1963/H3N8_1963
was sampled in 1963.  Such date information is used by the program to 
calibration the clock.  The date is part of the sequence name, and should 
be used in the tree file.  Every sequence in the data file must
have a known date.  

Then choose clock = 1 (global clock) to run the TipDate model.  To allow local
branch rates, you can use the symbol # in the tree file.  Look at the
files in the examples/mouselemurs/ for implementation of local clock
models.

The rest of the file contains two parts, as follows.

   (A) Results from running Andrew Rambaut's TipDate program.
   (B) baseml HKY85 global clock (clock=1)

References

Rambaut, A. 2000. Estimating the rate of molecular evolution: incorporating 
non-comptemporaneous sequences into maximum likelihood phylogenetics. 
Bioinformatics 16:395-399.

Yang, Z., and A. D. Yoder. 2003. Comparison of likelihood and Bayesian methods for estimating divergence times using multiple gene loci and calibration points, with application to a radiation of cute-looking mouse lemur species. Syst. Biol. 52:705-716.

Ziheng Yang




*************************************************
(A) Results from Andrew Rambaut's TipDate program

Note that I changed the file name from Andrew's example.phy to
TipDate.phy.  The command to run Andrew's TipDate is 

	tipdate -mHKY +s -v < TipDate.phy >out

Analysis of trees with dated tips - TipDate
Version 1.2
(c) Copyright, 1997-2001 Andrew Rambaut
Department of Zoology, University of Oxford
South Parks Road, Oxford OX1 3PS, U.K.

17 taxa, 1485 bases
        138 distinct patterns
Calculating likelihood of user supplied tree,
  iterating to find maximum likelihood branch lengths,
  assuming a molecular clock with dated taxa (SRDT model).
    Taxa dates range between 56 and 94,
    estimating the absolute rate of molecular evolution.
    and using the rate of change rate supplied = 0.000000
Rate homogeneity assumed.
Model=HKY
HKY85 model
  estimating ML transition/transversion ratio
  estimating base frequences from data
    frequencies = A:0.307506 C:0.187681 G:0.272450 T:0.232363
Tree in units of time:
(((((((((Brazi@82:1.52387882,(ElSal@83:0.86955431,NewCal@84:1.86955431):1.65432451):0.00001293,Mexico@84:3.52389175):1.37695033,ElSal@94:14.90084208):1.90479505,(PRico@86:7.72505490,Tahiti@85:6.72505490):1.08058224):0.00000000,Tahiti@79:1.80563713):4.79198989,Indon@77:4.59762703):1.05572925,Indon@76:4.65335628):39.69611913,(((Philip@64:3.86265651,Philip@84:23.86265651):7.33594953,Philip@56:3.19860604):13.22151465,(SLanka@78:21.63676446,(Thai@78:6.99850875,Thai@84:12.99850875):14.63825571):16.78335624):7.92935471):7.55525759,Thai@63:38.90473300);
Estimated value of Ts/Tv: 8.901642 (kappa=17.022524)
Estimated absolute rate of molecular evolution: 0.00077366
Absolute age of tree: 69.904733 (in the same units as the taxon dates,
        measured to the most recent tip).

Tree ln Likelihood = -3849.932714

Time taken - core: 4.827, total: 4.887 seconds


******************
(B) baseml clock=1

BASEML (in paml version 4.4e, June 2011)  TipDate.phy  HKY85  Global clock 

TREE #  1:  (((((((((1, (2, 7)), 6), 3), (11, 14)), 13), 5), 4), (((8, 10), 9), (12, (16, 17)))), 15);  MP score: 312.00
lnL(ntime: 17  np: 18):  -3849.932708    +0.000000
  18..19   19..20   20..21   21..22   22..23   23..24   24..25   25..26   26..1    26..27   27..2    27..7    25..6    24..3    23..28   28..11   28..14   22..13   21..5    20..4    19..29   29..30   30..31   31..8    31..10   30..9    29..32   32..12   32..33   33..16   33..17   18..15 
 0.699055 0.623502 0.226535 0.215978 0.168057 0.168057 0.149009 0.135239 0.135239 0.118696 0.157251 0.544207 0.411987 0.338628 0.376371 0.229987 0.077364 17.022524
SEs for parameters:
 0.075478 0.071537 0.016219 0.015559 0.009881 0.022003 0.016300 0.013943 0.011048 0.008998 0.019235 0.054259 0.017092 0.019713 0.041856 0.024586 0.011334 3.010776

Note: mutation rate is not applied to tree length.  Tree has times, for TreeView

(((((((((Brazi@1982, (ElSal@1983, NewCal@1984)), Mexico@1984), ElSal@1994), (PRico@1986, Tahiti@1985)), Tahiti@1979), Indon@1977), Indon@1976), (((Philip@1964, Philip@1984), Philip@1956), (SLanka@1978, (Thai@1978, Thai@1984)))), Thai@1963);

(((((((((Brazi@1982: 1.523931, (ElSal@1983: 0.869570, NewCal@1984: 1.869570): 1.654361): 0.000002, Mexico@1984: 3.523932): 1.376980, ElSal@1994: 14.900912): 1.904788, (PRico@1986: 7.725128, Tahiti@1985: 6.725128): 1.080572): 0.000005, Tahiti@1979: 1.805705): 4.792056, Indon@1977: 4.597761): 1.055731, Indon@1976: 4.653493): 39.696738, (((Philip@1964: 3.862766, Philip@1984: 23.862766): 7.335979, Philip@1956: 3.198746): 13.221994, (SLanka@1978: 21.637149, (Thai@1978: 6.998696, Thai@1984: 12.998696): 14.638453): 16.783591): 7.929491): 7.555241, Thai@1963: 38.905472);

Detailed output identifying parameters

Substitution rate is per time unit
    0.077364 +- 0.011334

Nodes and Times
(JeffNode is for Thorne's multidivtime.  ML analysis uses ingroup data only.)

Node   1 (Jeffnode   0) Time 1982.00 
Node   2 (Jeffnode   1) Time 1983.00 
Node   3 (Jeffnode   2) Time 1994.00 
Node   4 (Jeffnode   3) Time 1976.00 
Node   5 (Jeffnode   4) Time 1977.00 
Node   6 (Jeffnode   5) Time 1984.00 
Node   7 (Jeffnode   6) Time 1984.00 
Node   8 (Jeffnode   7) Time 1964.00 
Node   9 (Jeffnode   8) Time 1956.00 
Node  10 (Jeffnode   9) Time 1984.00 
Node  11 (Jeffnode  10) Time 1986.00 
Node  12 (Jeffnode  11) Time 1978.00 
Node  13 (Jeffnode  12) Time 1979.00 
Node  14 (Jeffnode  13) Time 1985.00 
Node  15 (Jeffnode  14) Time 1963.00 
Node  16 (Jeffnode  15) Time 1978.00 
Node  17 (Jeffnode  16) Time 1984.00 
Node  18 (Jeffnode  32) Time 1924.09  +-   7.55
Node  19 (Jeffnode  31) Time 1931.65  +-   7.15
Node  20 (Jeffnode  30) Time 1971.35  +-   1.62
Node  21 (Jeffnode  29) Time 1972.40  +-   1.56
Node  22 (Jeffnode  28) Time 1977.19  +-   0.99
Node  23 (Jeffnode  27) Time 1977.19  +-   2.20
Node  24 (Jeffnode  26) Time 1979.10  +-   1.63
Node  25 (Jeffnode  25) Time 1980.48  +-   1.39
Node  26 (Jeffnode  24) Time 1980.48  +-   1.10
Node  27 (Jeffnode  23) Time 1982.13  +-   0.90
Node  28 (Jeffnode  22) Time 1978.27  +-   1.92
Node  29 (Jeffnode  21) Time 1939.58  +-   5.43
Node  30 (Jeffnode  20) Time 1952.80  +-   1.71
Node  31 (Jeffnode  19) Time 1960.14  +-   1.97
Node  32 (Jeffnode  18) Time 1956.36  +-   4.19
Node  33 (Jeffnode  17) Time 1971.00  +-   2.46

Parameters (kappa) in the rate matrix (HKY85) (Yang 1994 J Mol Evol 39:105-111):
 17.02252


//end of file
