#10/02/2015
#Author Sarath Babu

#rename multiple files in UNIX
rename 's/^fgh/jkl/' fgh*

#find the count of a particular column 
#-d is the seperator, -f n is the column number
cut -d "" -f n filename | sort | uniq -c
