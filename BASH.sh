#10/02/2015
#Author Sarath Babu

#rename multiple files in UNIX
rename 's/^regex or string/change text/' filename

#find the count of a particular column 
#-d is the seperator, -f n is the column number
cut -d "" -f n filename | sort | uniq -c
#Using cut with tab as delimiter
cut -d$'\t' -f3,5 filename

