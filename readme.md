# What is PostgreSQL?
PostgreSQL or Postgres is a powerful, open-source relational database management system(RDBMS). It's a place where we can store, organize, and retrieve data for our app or website. You can ask questions which actually called queires to get the data we need from database. It makes sure data is safe and accurate even if used by many users. It is also able to handle complex data like json, date and locations, etc. It also offers writing functions in it to get our desire job done more efficently.

Postgres is very popular in the RDMBS world due to its rubustness and being open-source. Many best developers of the world keep contributing to it to make it better day by day.

# What is a schema in PostgreSQL?
A schema is like folder in our databse that helps to organize it and give us better control on it, such as it helps avoid name clashes of folders and give us folder access control like we can decide who can access what.

# Explain the Primary Key and Foreign Key concepts in PostgreSQL.

PRIMARY KEY: Primary Key is a unique ID for each row in a table. It can't be empty and makes sure every row is different. Usually there is only one primary key column per table. 

FOREGIN KEY: Foregin Key is a key that makes relationship between tables, Foreign Key of one table is actually refers to the Primary Key of another table. 

# What is the difference between the VARCHAR and CHAR data types?

VARCHAR: VARCHAR, in simple words that lets us use a predefined length of characters for text. We use VARCHAR in code like this VARCHAR(n) where "n" would be the given predefined number. If we set n as "50" which is actually then 50 characters limit for that text.

CHAR: CHAR is kind of opossite of VARHCAR, here we have to write fixed lenght of text, if we don't it will use pads with spaces. 

We use VARCHAR when text can be different length and use CHAR when test is always same size such as 2 letters country code. 

