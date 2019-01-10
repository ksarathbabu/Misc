Find the max value of column per group in a dataframe
dt <- data.table(d)
ds=dt[ , max(VALUE), by = GROUP_ID]

#To remove digits from a vector
gsub("[[:digit:]]","",variable)

#To remove alphabet from a vector
gsub("[aA-zZ]","",variable)
