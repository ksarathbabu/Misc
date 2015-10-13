#10/02/2015
#Author Sarath Babu

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
comm -3 a b
