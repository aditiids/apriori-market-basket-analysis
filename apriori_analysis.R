# Load required libraries
library(arules)
library(arulesViz)

# Prompt user for file path or set a default file path
# You can either hardcode this file path or ask the user for it.
file_path <- file.choose()  # This will prompt the user to select the file
# Alternatively: file_path <- "/path/to/your/file.csv"

# Load the transactional data from the CSV file
data <- read.transactions(file_path, format = "basket", sep = ",")

# View a summary of the dataset
summary(data)

# Inspect the first 10 transactions to check the data
inspect(data[1:10])

# Step 1: Find frequent itemsets (min support = 0.02, min len = 1)
itemsets_one <- apriori(data, parameter = list(support = 0.02, minlen = 1, maxlen = 1, target = "frequent itemsets"))
inspect(itemsets_one)

# Sort the frequent itemsets by support
sorted_itemsets_one <- sort(itemsets_one, by = "support")

# View the top 10 sorted frequent itemsets
inspect(head(sorted_itemsets_one, 10))

# Step 2: Generate association rules (min support = 0.01, min confidence = 0.02)
rules <- apriori(data, parameter = list(support = 0.01, confidence = 0.02, target = "rules"))

# Summarize the generated rules
summary(rules)

# View the top 10 rules
inspect(head(rules, 10))

# Sort the rules by lift and inspect top rules
inspect(head(sort(rules, by = "lift"), 10))

# Visualizing the rules
# Plot all the rules
plot(rules)

# Plot the top 10 rules with a graph method
plot(head(rules, 10), method = "graph")

# Step 3: Filter rules by high confidence (>0.9)
confidentRules <- rules[quality(rules)$confidence > 0.9]
inspect(confidentRules)

# Step 4: Filter rules with high lift values
highLiftRules <- head(sort(rules, by = "lift"))
inspect(highLiftRules)
