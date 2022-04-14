# H&M Personalized Fashion Transaction
![HM](images/Hm.jpg)


## First part: Data Extracting

### First resources: Three csv files from Kaggle website 

 ![Tr](images/transaction_data.JPG)

The dataset is a about the purchase history of customers across time, along with supporting metadata.

Kaggle files:

-	articles.csv - detailed metadata for each article_id available for purchase
-	customers.csv - metadata for each customer_id in dataset
-	transactions_train.csv -  consisting of the purchases each customer for each date, as well as additional information. Duplicate rows correspond to multiple purchases of the same item. 

### Second resources: Extracting data from H&M website by using a tricky api request
By using an hidden ApI from the Developer tools in H&M website ALL product data in men, women, baby, kids was collected. Bellow table shows one example of our dataframe.


##### <div align="center"> Table 2: men_articles.csv - include price, title, product name of all men products</div>

![WA](images/men_product_from_api.JPG)



## Second part : Data Transformation
For each of the different files, the following data transformations were performed:
-  **Deduplication**: Identifying and removing duplicate records
-  **Cleaning**: Removing null values
-  **Format revision**: For example, in *transactions_train.csv*, we converted a column as a datatime column. Additionally, in *women_articles.csv*, *men_articles.csv*, *baby_articles.csv* and *kids_articles.csv* the price column was converted to an integer
-	**Key restructuring**: Establishing key relationships across tables. E.g. the tables relate with each other due to the 2 primary keys: customer_id and article_id.
-	**Filtering**: Selecting only certain rows and/or columns. 
![WA](images/filtering_example.JPG)
-	**Data validation**: Simple or complex data validation –  if the first three columns in a row are empty then reject the row from processing
-	**Summarization**: Values are summarized to obtain total figures

Image of customers file before cleaning
![HM](images/customer_df_before_cleaning.JPG)



## Third part : Data Loading

we had 4 dataframe from H&M API that we concatenate them to one dataframe, we had 3 dataframe from kaggle dataset that we merged them to 2 dataframes, and then again we merged them to API dataframe but unfortunetly as dataframes were too big the kernel got dead for loading process so we load dataframe seperately and the big transaction file was made as sample for loading. This below photo shows how 2 dataframe joined in SQL:

![HM](images/sql-join.JPG)













