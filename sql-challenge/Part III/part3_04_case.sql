drop table thrill
create table thrill(
	id int,
	animal_name varchar(30),
	species varchar(30));

insert into thrill (id, animal_name, species)
values (1, 'Mickey Mouse', 'duck'),
	(1, 'Mickey Mouse', 'duck'),
	(3, 'Donald Duck', 'mouse')
select * from thrill 

update thrill set species = 'mouse'
where animal_name = 'Mickey Mouse'

update thrill set species = 'duck'
where animal_name = 'Donald Duck'

