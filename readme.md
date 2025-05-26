# 1 What is PostgreSQL?

PostgreSQL, or Postgres, is a powerful, open-source relational database management system (RDBMS). It's a place where we can store, organize, and retrieve data for our app or website. You can ask questions, which are actually called queries, to get the data we need from the database. It makes sure data is safe and accurate even when used by many users. It can also handle complex data like JSON, dates, and locations, etc. It also offers writing functions to get our desired job done more efficiently.

Postgres is very popular in the RDBMS world due to its robustness and being open-source. Many of the best developers in the world keep contributing to it to make it better day by day.

# 2 What is a schema in PostgreSQL?

A schema is like a folder in our database that helps us organize things and gives us better control. For example, it helps avoid name clashes (like two tables having the same name) and lets us manage access — we can decide who can access what.

# 3 Explain the Primary Key and Foreign Key concepts in PostgreSQL.

Primary Key: A Primary Key is a unique ID for each row in a table. It can’t be empty (NULL) and makes sure every row is different. Usually, there's only one Primary Key column per table.

Foreign Key: A Foreign Key creates a relationship between two tables. A Foreign Key in one table refers to the Primary Key in another table.

# 4 What is the difference between the VARCHAR and CHAR data types?

VARCHAR: VARCHAR is used to store text with a variable length. You define a max length like VARCHAR(50), which means the text can be up to 50 characters. It uses only the space it needs.

CHAR: CHAR is used to store fixed-length text. If the text is shorter than the defined length, it gets padded with spaces.

We use VARCHAR when text can be different length and we use CHAR when text is always same size, such as 2 letters country code.

# 5 Explain the purpose of the WHERE clause in a SELECT statement.

WHERE is one of the key features of SQL. It is used to filter rows in a query, so we only get the data we need based on a condition.
