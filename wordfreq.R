fileName <- 'input.txt'
outFile <- 'output.txt'

x <- readChar(fileName, file.info(fileName)$size)

con = file(fileName, "r")

sentences <-readLines(con)
scan("input.txt","character",sep="\n")

sentences<-gsub("([_-])|[[:punct:]]","\\1",sentences)
sentences<-gsub("\\.","",sentences)

#NEED TO DISCARD - _ OR NUM IF THE WORD STARTS WITH THEM 
#probably using SUB() , subs for one occurence
#use it within an if statement

#Split sentence
word_counts <- as.data.frame(table(unlist( strsplit(sentences, "\ ") )))  # split vector by space

print(word_counts)