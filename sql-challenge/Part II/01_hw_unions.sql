--Use the rental_db database that was created during exercise 1 of Unit 9.2

select * from actor
select * from staff
select * from customer
select * from customer_list

--Create a view, called all_parties using UNION and write a PostgreSQL statement to return all of the actors, staff, and customers. Return the first_name and last_name columns from each of those tables and also indicate the type of record. (Hint: Hardcode the type of record in each of the queries that will be part of the union)

create view all_parties as 
select concat ('a', actor_id) as id, first_name, last_name from actor
union
select concat ('s', staff_id) as id, first_name, last_name from staff
union
select concat ('c', customer_id) as id, first_name, last_name from customer

select * from all_parties

--Use UNION to display from the tables customer and customer_list the ID of all customers who live in the city of London. Determine whether both tables contain the same customers by using UNION ALL. (Hint: Consider using subqueries or joins... either will work).
--select concat ('c', c.customer_id) as id
select  c.customer_id
from customer as c 
join customer_list as l on c.customer_id = l.id
where l.city = 'London'
--union
union all
--select concat ('l', id) as id from customer_list
select id from customer_list
where city = 'London'