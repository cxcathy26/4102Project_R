fileName <- 'input.txt'
outFile <- 'output.txt'

con = file(fileName, "r")

sentences <-readLines(con)
scan("input.txt","character",sep="\n")

sentences<-gsub("([_-])|[[:punct:]]","\\1",sentences)
sentences<-gsub("\\.","",sentences)
print(sentences)
sentences <- gsub("^[[:digit:]]+" , "", sentences) #removes digits in front of word
print(sentences)
sentences <- gsub("^-+" , "",sentences)
sentences <- gsub("^_+" , "",sentences) #is regular expression
#sentences[!sapply(sentences, identical, character(0))]
newsen <- unlist(strsplit(sentences, "\ "))

print(newsen)
newsen <- gsub("^[[:digit:]]*" , "", newsen) #removes digits in front of word
newsen <- gsub("^-+" , " ", newsen)
newsen <- gsub("^_+" , " ", newsen) #is regular expression
#print(newsen)
#newsen <- gsub("[[:blank:]]*" , " ", newsen)
#sentences <- paste(newsen, sep= " ")

#-----------------------------------------------------------
#-----------------------------------------------------------
#NEED TO DISCARD - _ OR NUM IF THE WORD STARTS WITH THEM 
#probably using SUB() , subs for one occurence
#use it within an if statement

#Split sentence
word_counts <- as.data.frame(table(unlist( strsplit(newsen, "\ ") )))  # split vector by space

print(word_counts)
close(con)