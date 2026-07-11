# Open Secrets

Only American citizens (and immigrants with green cards) can contribute to federal politics, but the American divisions of foreign companies can form political action committees (PACs) and collect contributions from their American employees. (Source: https://www.opensecrets.org/political-action-committees-pacs/foreign-connected-pacs/2024).

In this exercise you will work with data from contributions to US political parties from foreign-connected PACs. The data is stored in CSV files in the `data` directory of your repository/project. There are 13 files, each for an election cycle between 2000 and 2024.

a. Load all the data at once and stack them on top of each other with a column indicating which year the data is from with a single call to `read_csv()`. Call the data frame `pac_raw`.

b. Clean the names of the variables in the dataset with a new function from the janitor package: `clean_names()`. Then clean and transform the data such that you have contribution amounts to Democrats and Republicans as separate columns and country of origin and parent company as separate columns. Save the resulting data frame with a the name `pac` (don’t overwrite `pac_raw`) and print the top 10 rows of the result.

c. Then, pivot the data longer such that instead of `dems` and `repubs` columns you have a column called `party` with levels `Democrat` and `Republican` and another column called `amount` that contains the amount of contribution. Save the resulting data frame with a new name (don’t overwrite `pac`) and print the top 10 rows of the result.

d. Then, for each election cycle (`year`) calculate the total amount of contributions to Democrat and Republican parties from PACs with `country_of_origin` UK. The resulting summary table should have two rows for each year of data, one for `Democrat` and one for `Republican` contributions. Save the resulting data frame with a new name (don’t overwrite the input data) and print the top 10 rows of the result.

e. Crate a visualization of yearly total contributions to US political parties from UK-connected PACs. Use appropriate aesthetic mappings and settings and justify your choices with a brief narrative. Then, describe what the visualization reveals about the contributions to Democrats and Republicans from UK-connected PACs over time. 
