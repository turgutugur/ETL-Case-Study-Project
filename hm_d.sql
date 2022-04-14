DROP TABLE IF EXISTS "transactions";
DROP TABLE IF EXISTS "api_data";
DROP TABLE IF EXISTS "customer";
DROP TABLE IF EXISTS "article";

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    FN INT,
    Active INT,
    club_member_status VARCHAR,
    fashion_news_frequency VARCHAR,
    age INT,
    postal_code INT
);

CREATE TABLE article (
    article_id INT PRIMARY KEY ,
    prod_name VARCHAR,
    product_type_name VARCHAR,
    product_group_name VARCHAR,
    graphical_appearance_name VARCHAR,
    colour_group_name VARCHAR,
    perceived_colour_value_name VARCHAR,
    department_name VARCHAR,
    index_name VARCHAR,
    index_group_name VARCHAR,
    section_name VARCHAR,
    garment_group_name VARCHAR);



CREATE TABLE api_data (
    article_id INT PRIMARY KEY,
    title VARCHAR,
    price DECIMAL);

    

CREATE TABLE transactions (
    transactions_id INT,
    customer_id INT,
    t_dat date,
    article_id INT,
    price DECIMAL,
    sales_channel_id INT,
    PRIMARY KEY (transactions_id)
    );
    

-- Joins tables
SELECT article.article_id, article.prod_name, article.product_group_name ,article.index_name, api_data.price as new_tb
FROM article
JOIN api_data
ON article.article_id = api_data.article_id;



