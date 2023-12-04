# Load the mtcars dataset
data(mtcars)

#aggregate_stats <- aggregate(hp ~ mpg, data = mtcars, FUN = mean)
# Calculate aggregate statistics - grouping cylinder and gear variable 
aggregate_stats <- aggregate(.~ cyl+gear, data = mtcars, FUN = mean)
#Specify the grouping variables cyl and gear: grouping the data based on the combination of these two 
# Display the results
print(aggregate_stats)
