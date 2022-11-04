# Data Definition Language

## SQL's syntax

Comprises several types of statements that allow you to perform various
commands and operations. 

## Definition
1. A syntax
2. A set of statements that allow the user to define or modify data structure and objects, such as tables. 

### CREATE Statement

Used for creating entire databases and database objects as tables. 

```
CREATE object_type object_name;
CREATE TABLE object_name ( column_name data_type);
```
Where **Table** is **object_type**.

More examples:
```
CREATE TABLE sales (purchase_number INT);
```

### ALTER Statement

Used when altering existing objects. 

1. ADD
2. REMOVE
3. RENAME

Examples:
```
ALTER TABLES sales
ADD COLUMN date_of_purchase DATE;
```

### DROP Statement 

Used for deleting a Database objects. 

Examples:
```
DROP object_type object_name;
DROP TABLE customers;
```

### RENAME Statement

Allows you to rename an object.

```
RENAME object_type object_name TO new_object_name
RENAME TABLE customers TO customer_data;
```

### TRUNCATE Statement

Instead of deleting an entire table through DROP, we can also remove its data and continue to have the table as an object in the database.

```
TRUNCATE object_type object_name;
TRUNCATE TABLE customers;
```