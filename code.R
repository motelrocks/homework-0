library(tidyverse)
ggplot()
#We learn how to determine the probability that an observation is due to random variability given categorical, binary or ordinal data.
Fisher's exact test determines the p-value as the probability of observing an outcome as extreme or more extreme than the observed outcome given the null distribution.
Data from a binary experiment are often summarized in two-by-two tables.
The p-value can be calculated from a two-by-two table using Fisher's exact test with the function fisher.test().

tab <- matrix(c(3,1,1,3), 2, 2)
rownames(tab) <- c("Poured Before", "Poured After")
colnames(tab) <- c("Guessed Before", "Guessed After")
tab

# p-value calculation with Fisher's Exact Test
fisher.test(tab, alternative = "greater")