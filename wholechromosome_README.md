The wholechromosome_sim, wholechromosome_sim_noparalog, and wholechromosome_sim_nolncrna scripts contain commands used to analyze the data for whole chromosome enrichment/depletion for genes with certain expression biases.  The overall structure of the scripts is as follows.

1. Load all packages and data.
2. Set seed for reproducibility using set.seed() function in base R and filter the data set removing all lncRNA or random redundant paralogs using the sample function in base R if applicable. 
3. Analyze the observed data for comparison to simulation values.
4. Run simulations using the sample function in base R to take a random sample of all the genes in the genome without replacement and the same analysis performed for the observed data.
5. Output data.
