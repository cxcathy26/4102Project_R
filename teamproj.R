fileName <- 'input.txt'
outFile <- 'output.txt'

x <- readChar(fileName, file.info(fileName)$size)


flag <- 0

con = file(fileName, "r")

line <-readLines(con)
lineCount <- as.numeric(length(line)) #OUTPUTS NUMBER OF LINES
totalWords <- 0
numWords <-0

#NEED TO SPLIT EVERY LINE IN THE FILE TH
for(m in line){
line_split <- strsplit(m, "")[[1]]
  for (n in line_split){ #ITERATES THROUGH EVERY CHARACTER IN A LINE
    if (flag ==0){
      print(n) #n is the character 
      ascii <- strtoi(charToRaw(n)) #I DONT THINK THIS IS ASCII 
      print(ascii)
      if ((ascii >96 & ascii < 123) || (ascii >64 & ascii < 91)){
        flag <- 1; 
      }
    }
    else {
      if ((ascii >96 & ascii < 123) || (ascii >64 & ascii < 91) || (ascii >47 & ascii < 58) || (ascii ==45) || (ascii == 95)){
        
      }else{
        numWords <- numWords + 1;
        flag <- 0;
      }
    }
  }
  totalWords <- totalWords + numWords; 
}
    #
    #NEED TO GET ASCII VALUE OF N 
    #CHECK ASCII VALUEES
  #}

 
#------------------------------------------
#Counting number of characters 

chars <- gsub("\\s", "", x)
numChars <- as.numeric(nchar(chars)) 

#can read lines then iterate over the lines by reading each character and checking whether it is a word

#------------------------------------------------
#Counting number of words

print(totalWords)
print(numChars)
print(lineCount)

close(con)
