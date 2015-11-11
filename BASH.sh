#10/02/2015
#Author Sarath Babu

#Setting up alias
alias po="cd /xxx/yyy"

#Variable in Alias is not possible but a small function can be written
function po { cd "/xxx/$1" ;}
export -f po

#To run a script in the background and redirect the output to a file
nohup script >output 2>&1 &

#rename multiple files in UNIX
rename 's/^regex or string/change text/' filename

#read a file line by line in bash
#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Text read from file: $line"
done < "$1"


#find the count of a particular column 
#-d is the seperator, -f n is the column number
cut -d "" -f n filename | sort | uniq -c
#Using cut with tab as delimiter
cut -d$'\t' -f3,5 filename

#modify a single column using awk
awk -F "\t" ' BEGIN{OFS="\t"} { if($n !~ "^regex") {split($n, a, "delimiter"); $n=a[1]":"a[2];}  print $0}' input >output

#Sort file 2 based on the order of file 1 using awk (Important condition is column 1 should match)
awk -F' ' 'NR==FNR{c[$1]++;next};c[$1] > 0' file1 file2 >output

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

#Remove the last match - in a line
sed 's/\(.*\)-/\1/'


# To run scripts parallel   
alias parallel='parallel --gnu --no-notice --verbose --delay 1.0 --eta --progress --workdir $PWD'

cat inputfile | parallel -j 12 "./script.sh {} "



