# Data Manipulation Language (DML)

Its statement allow us to manipulate the data in the tables of a database. 

## SELECT Statement

Used to retrieve data from database objects, like tables.

```
SELECT * FROM sales;
```

## INSERT Statement 

Used to insert data into tables.

```
INSERT INTO sales( column1, column2 ) VALUES (value1, value2);
```


## UPDATE Statement

Allows you to renew existing data of your tables.

```
UPDATE sales
SET date_of_purchase = '2017-12-12'
WHERE purchase_number = 1;
```

## DELETE Statement

Functions similarly to the TRUNCATE statement. 

### TRUNCATE VS DELETE

TRUNCATE allows us to remove all the records contained in a table. 

With DELETE, you can specifiy precisely what you would like to be removed. 

DELETE:
```
DELETE FROM sales;
DELETE FROM sales WHERE purchase_number=1;
```

TRUNCATE:
```
TRUNCATE TABLE sales;
```
