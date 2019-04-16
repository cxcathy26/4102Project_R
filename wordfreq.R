fileName <- 'input.txt'
outFile <- 'output.txt'

con = file(fileName, "r") 

sentences <-readLines(con) # read lines
scan("input.txt","character",sep="\n")

#USES REGULAR EXPRESSIONS TO IDENTIFY WORDS
#sentences<-gsub("\\."," ",sentences) #regular expression that 
sentences<-gsub("([_-])|[[:punct:]]","\\1\\2#",sentences) #regular expression that gets rid of extra punctuation characters in the input besides _ or -
sentences<-gsub("_#","_",sentences) #regular expression to keep _
sentences<-gsub("-#","-",sentences) #regular expression to keep -
sentences<-gsub("#"," ",sentences) #regular expression to separate words with unwanted characters in between 
sentences <- gsub("^[[:digit:]]+" , "", sentences) #removes digits in front of word
print(sentences)
sentences <- gsub("^-+" , "",sentences) #removes _ in the front of a word
sentences <- gsub("^_+" , "",sentences) #regular expression to remove - at the start of a word

newsen <- unlist(strsplit(sentences, "\ ")) #splits each line into words

for (i in 1:20) { #assumes word has maximum 20 characters 
  newsen <- gsub("^[[:digit:]]*", "", newsen) #removes digits in front of words
  newsen <- gsub("^-+" , "", newsen) #remove _ at start of words
  newsen <- gsub("^_+" , "", newsen) #remove - at start of words
}

newsen <- gsub("[[:blank:]]" , "", newsen)

#-----------------------------------------------------------
#-----------------------------------------------------------

#Split sentence
word_counts <- as.data.frame(table(unlist( strsplit(newsen, "\ ") )))  # split vector by space
colnames(word_counts) <- c("Word", "Freq")
print(word_counts)
close(con)