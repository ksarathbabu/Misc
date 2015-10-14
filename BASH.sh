#10/02/2015
#Author Sarath Babu

#Setting up alias
alias go="cd /xxx/yyy"

#Variable in Alias is not possible but a small function can be written
function go { cd "/data6/$1" ;}
export -f go

#To run a script in the background and redirect the output to a file
nohup script >output 2>&1 &

#rename multiple files in UNIX
rename 's/^regex or string/change text/' filename


#find the count of a particular column 
#-d is the seperator, -f n is the column number
cut -d "" -f n filename | sort | uniq -c
#Using cut with tab as delimiter
cut -d$'\t' -f3,5 filename


#Comparing two files after sorting 
diff <(sort file1) <(sort file2)

#Make sure both a and b files are sorted 
#Show lines that only exist in file a: (i.e. what was deleted from a)
comm -23 a b

#Show lines that only exist in file b: (i.e. what was added to b)
comm -13 a b

#Show lines that only exist in one file or the other: (but not both)
comm -3 a b | sed 's/^\t//'

#Remove first line from a file
sed 's/^\t//' a
