create table employees  (
	employee_id int,
	first_name varchar(30),
	last_name varchar(30),
	department_id int
						 );
create table departments  (
	id int,
	dept_name varchar(30)
						 );
drop table departments

  SELECT * FROM employees e
  JOIN departments d
  ON (e.department_id = d.id)
  WHERE e.department_id = 45;
