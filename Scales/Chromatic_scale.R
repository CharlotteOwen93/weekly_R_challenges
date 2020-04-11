library(tidyverse)

# Background
# For the purpose of this challenge, the 12 musical notes in the chromatic scale are named:
# 	
# 	C  C#  D  D#  E  F  F#  G  G#  A  A#  B
# The interval between each pair of notes is called a semitone, and the sequence wraps around. So for instance, E is 1 semitone above D#, C is 1 semitone above B, F# is 4 semitones above D, and C# is 10 semitones above D#. (This also means that every note is 12 semitones above itself.)
# 
# A major scale comprises 7 out of the 12 notes in the chromatic scale. There are 12 different major scales, one for each note. For instance, the D major scale comprises these 7 notes:
# 	
# 	D  E  F#  G  A  B  C#
# The notes in a major scale are the notes that are 0, 2, 4, 5, 7, 9, and 11 semitones above the note that the scale is named after. In the movable do solfège system, these are referred to by the names Do, Re, Mi, Fa, So, La, and Ti, respectively. So for instance, Mi in the D major scale is F#, because F# is 4 semitones above D.

chrom_scale <- c("C", "C#", "D", "D#",  "E",  "F",  "F#",  "G", "G#",  "A",  "A#",  "B")
sol_sys <- c("Do", "Re", "Me", "Fa", "So", "La", "Ti")
major_scale <- c(0,2,4,5,7,9,11)

get_note <- function(scale,solfege){
	start <- which(chrom_scale == scale)
	add <- which(sol_sys == solfege)
	new_note <- start+major_scale[add]
	if(new_note>12){new_note <- new_note-12}
	output <- chrom_scale[new_note]
	return(output)
}

get_major_scale <- function(note){
	start <- which(chrom_scale == note)
	scale <- major_scale + start
	scale[scale>12] <- scale[scale>12] - 12
	return(chrom_scale[scale])
}

simpler_get_note <- function(scale,solfege){
	the_scale <- get_major_scale(scale)
	a <- which(sol_sys==solfege)
	return(the_scale[a])
}

get_major_scale("A")
get_note("A","Fa")
simpler_get_note("A","Fa")




