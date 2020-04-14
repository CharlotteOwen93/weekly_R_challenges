library(tidyverse)

#Challenge: the Havel-Hakimi algorithm
# Perform the Havel-Hakimi algorithm on a given sequence of answers. This algorithm will return true if the answers are consistent (i.e. it's possible that everyone is telling the truth) and false if the answers are inconsistent (i.e. someone must be lying):
# 10:50
# Remove all 0's from the sequence (i.e. warmup1).
# 	If the sequence is now empty (no elements left), stop and return true.
# 	Sort the sequence in descending order (i.e. warmup2).
# 	Remove the first answer (which is also the largest answer, or tied for the largest) from the sequence and call it N. The sequence is now 1 shorter than it was after the previous step.
# 	If N is greater than the length of this new sequence (i.e. warmup3), stop and return false.
# 	Subtract 1 from each of the first N elements of the new sequence (i.e. warmup4).
# 	Continue from step 1 using the sequence from the previous step.
# 	Eventually you'll either return true in step 2, or false in step 5.