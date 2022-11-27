# DROP VS TRUNCATE VS DELETE

/**
DROP:
Delete all indexes, constraint 
Lose everthing. 
Won't be able to ROLLBACK

TRUNCATE:
Remove all records from the table. 
Indexes are gone, but indexes are still remain. 
When truncating, auto-increment values will be reset. 

DELETE:
Removes records ROW BY ROW. 

*/