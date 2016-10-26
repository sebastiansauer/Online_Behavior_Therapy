This repository provides detailled source code (R) and results for the research paper *Prediction of Internet-delivered cognitive behavior therapy outcome for pediatric obsessive-compulsive disorder: Comparison of regression analytic and machine learning approaches*. 

This repository serves two purposes: first, it documents our analyses (for machine learning models), and, second, it provides supplementary results (more details).

The corresponding author of this paper is [Fabian Lenhard](<fabian.lenhard@ki.se>).

This code was written by @sebastiansauer.

The repository is organized in the following folder:

-- **analysis** provides the source code plus the results of all analysis. There are more details provided as reported in the paper. The most important files are:
-- *analysis* -- *analysis_01*: initial exploration of data set  
-- *analysis* -- *analysis_02*: data manipulation (eg., computing aggregates)  
-- *analysis* -- *analysis_03*: simple classification models  
-- *analysis* -- *analysis_04*: more complex classification models  
-- *analysis* -- *analysis_05*: regression models and comparison of classification with regression models  

For each of the 5 analyses, a `Rmd` source file is provided, and a `html` output file. It is probably the best and easiest approach to read through the five output files in the order provided.
	
There are some *subfolders* in `analysis`(of minor importance):  
--analysis -- *diverse*: stuff for testing, experimenting, but didn't make it as "real" results of this analysis. This folder can safely be ignored to date.  
--analysis -- *functions*: Some R functions are packed to this folder, R functions which are used throughout this analysis.  



-- **data_objects**: some R objects which are handed through the different analyses.



Please refer to the paper for details on the background, rationale, and objective of the analysis.

Please note that **no data** is provided in this repository. Please contact the corresponding author (<fabian.lenhard@ki.se>) for any queries in this regard.

