The fine_obs, fine_sim, fine_obs_noparalog, and fine_sim_noparalog scripts contain commands used to analyze the non-random patterns of gene clustering within chromosomes.  The overall structure of the scripts is as follows.

_obs scripts
1. Load all packages and data.
2. Set up data frames to store summary data.
3. Analyze data for clusters of each expression bias for each chromosome.
4. Output data.

_sim scripts
1. Load all packages and data.
2. Set up data frames to store simulation data. Set seed for reproducibility using set.seed() function in base R and filter the data set removing all lncRNA or random redundant paralogs using the sample function in base R if applicable. 
3. Set up a function for the analysis of clusters of each expression bias for each chromosome.
4. Run simulations using the sample function in base R to take a sample of all the genes in a given chromosome without replacement and the analysis function previously set up.  The results for each simulation run are collected as comparisons to the observed data. 
5. Output data.
