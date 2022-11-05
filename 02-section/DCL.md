# Data Control Language

Data Definition and Data Manipulation are the ones will use the more. 

Contains two keywords: GRANT & REVOKE Statements.

Allow us to manage the rights users have in database. 

## GRANT Statement 

Gives ( or grant ) certain permission to users. 

Syntax:
```
GRANT type_of_permission ON database_name.table_name 
TO 'username'@'localhost';
```

These rights will be assigned to a person who has a username registered at the Local server ( 'Localhost': IP 127.0.0.1 )

Big companies and corporations don't use this type of server, and their databases lay on external, more powerful servers. 

```
CREATE USER 'frank'@'localhost' IDENTIFIED BY 'pass';

// Frank can't : Drop, Truncate, Alter, Insert, delete
GRANT SELECT ON sales.customers TO 'frank'@'localhost';

// Can use ALL on ALL TABLES from sales.
GRANT ALL ON Sales.* TO 'frank'@'localhost';
```

## REVOKE Statement

Used to revoke permisssions and privilegies of database users;
1. The exact opposite of GRANT.
```
REVOKE type_of_permission ON database_name.table_name 
FROM 'username'@'localhost';

REVOKE SELECT ON sales.customers FROM 'frank'@'localhost';
```


## DATABASE ADMIN

People who have complete rights to a Database.
1. They can grant and revoke access to users.

