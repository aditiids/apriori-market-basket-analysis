# Market Basket Analysis using R

## Overview
This project performs Market Basket Analysis using association rule mining with the **`arules`** and **`arulesViz`** packages in R. The analysis identifies frequent itemsets and generates association rules based on a transactional dataset.

## Features
- Loading and preprocessing transactional data.
- Mining frequent itemsets using the Apriori algorithm.
- Generating association rules.
- Visualizing frequent itemsets and association rules.

## Prerequisites
- R version 4.4.2 or later.
- Required R packages:
  - `arules`
  - `arulesViz`

To install the required packages, run the following commands in your R console:
```R
install.packages("arules")
install.packages("arulesViz")
```

## Dataset
- The dataset used in this project is a transactional dataset in CSV format. Ensure that the dataset (Market_Basket_Optimisation.csv) is placed in the correct directory for loading.
  
## Usage
- Load the dataset using the read.transactions function from the arules package.
- Preprocess the data (e.g., removing duplicates or irrelevant items).
- Use the apriori function to find frequent itemsets.
- Generate association rules using the ruleInduction function.
- Visualize the results using the arulesViz package.

## License
-This project is licensed under the MIT License.

- Feel free to modify or add anything specific to your project. This is a basic structure to get started.
