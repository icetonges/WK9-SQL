drop view title_count

create view title_count as
select film_id, count(inventory_id) as "count" from inventory
group by film_id

SELECT title, '7' as "Number of Copies"
FROM film
WHERE film_id IN
(  SELECT film_id FROM title_count
where "count" = 7);