--There are four basic types of SQL joins: inner, left, right, and full.  
-- (INNER) JOIN: Returns records that have matching values in both tables
-- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
-- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
-- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table
create table vendor_table(
	id int,
	vendor_name varchar(30),
	vendor_country varchar(30))
insert into vendor_table(id, vendor_name, vendor_country)
	values (1, 'Carlton', 'Turkey'),
		(2, 'Cascade Yarns', 'United States'),
		(3, 'Debbie Bliss', 'England'),
		(4, 'Tahki', 'Greece')

create table yarn_table (
	id int,
	yarn_name varchar(30),
	yarn_type varchar(30),
	grams int,
	color int,
	lot int,
	qty int,
	vendor_id int)
	
-- left join  was used to create the final view below

insert into yarn_table (id, yarn_name, yarn_type, grams, color, lot, qty, vendor_id)
	values (1, 'Merino Superme', 'Worsted', 50, 8, 76123, 1, 1),
		(2, 'Cartwheel', 'Bulky', 200, 2, 1801, 2,3),
		(3, 'Paloma Tweed', 'Super Bulky', 50, 42513, 63978, 2, 3),
		(4, 'Heritage', 'Sock', 100, 5640, 1707058, 1,2)
select v.vendor_name, v.vendor_country, y.yarn_name, y.yarn_type 
from vendor_table as v
left join yarn_table as y on v.id = y.vendor_id