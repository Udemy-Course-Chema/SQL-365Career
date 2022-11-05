# Transaction Control Language

Not every change you make to a database is saved automatically. 

## COMMIT Statement

1. Related to INSERT, DELETE, UPDATE.
2. Will save the changes you've made.
3. Will let other users have access to the modified version of the database. 

As DB Administrator.
```
UPDATE customers
SET last_name = 'Johson'
WHERE customer_id = 4
COMMIT;
```

Like
```
git commit -m "Saving changes"
```

## ROLLBACK Statement

Will let you make a step back.

- Allow you to undon any changes you have made but don't want to be saved permanently. 

- The last change(s) made will not count.
- Reverts to the last non-committed state.

```
UPDATE customers
SET last_name = 'Johson'
WHERE customer_id = 4
COMMIT;

ROLLBACK;
```
