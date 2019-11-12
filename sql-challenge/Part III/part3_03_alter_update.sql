-- Part 1
-- explain the difference between alter and update in SQL statements.
-- ALTER and UPDATE are the two modifying commands of SQL. ALTER is used to modify the structure of the relations (Tables) in the database. UPDATE Command is used to modify the data stored in a relation of the database. The basic difference between ALTER and UPDATE Command is that ALTER command is a Data Definition Language command whereas the UPDATE command is a Data Manipulation Language command.
-- Key Differences Between ALTER ad UPDATE Command in SQL
-- The point that distinguishes both ALTER and UPDATE Command is that ALTER command is Data Definition Language (DDL). On the other hands, the UPDATE Command is a Data Manipulation Language (DML).
-- ALTER Command add, delete, modify, rename the attributes of the relation whereas, the UPDATE Command modifies the values of the records in the relations.
-- ALTER Command by default set values of all the tuples or record as NULL. On the other hands, the UPDATE Command set the value specified in the command to the tuples of the relation.
-- ALTER command is attribute or column specific whereas, the UPDATE command is attribute value specific.
--Part 2
drop table altervsupdate
create table altervsupdate (
	employee_id int,
	first_name varchar(30),
	last_name varchar(30),
	department_id int)
insert into altervsupdate (employee_id, first_name, last_name, department_id)
values (3, 'Chris', 'Christian', 25),
	(14, 'Jan', 'Jansson', 45),
	(17, 'Sam', 'Samuels', 45);

ALTER TABLE altervsupdate 
RENAME COLUMN department_id TO dept_id;
alter table altervsupdate add annual_salary int;
select * from altervsupdate;