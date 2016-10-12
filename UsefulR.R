Find the max value of column per group in a dataframe
dt <- data.table(d)
ds=dt[ , max(VALUE), by = GROUP_ID]
