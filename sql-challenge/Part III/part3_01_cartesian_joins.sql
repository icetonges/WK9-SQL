create table first_table (
	first_id varchar(30)
						 );
create table second_table (
	second_id varchar(30)
						 );
__The outputs of following queries are 25 and 10, respectively.
  SELECT COUNT(*)
  FROM first_table;

  SELECT COUNT(*)
  FROM second_table;

--What will be the number of rows in the output of the following query?
--  SELECT *
 -- FROM first_table, second_table;
 --- Answer: 250 
 SELECT count(*)
 FROM first_table, second_table;
 
 create table table_one (
	id varchar(30)
						 );
create table table_two (
	id varchar(30)
						 );
SELECT * FROM table_one
SELECT * FROM table_two
SELECT * FROM table_one, table_two

What will the query SELECT * FROM table_one, table_two; look like?

