--to create a table cities using column name and datatypes
create table cities(
name varchar(50), country varchar(50),
population int , area int
);
-- use the value keyword to insert the content of the table and double quotes are used for declaring column , use single qoutes for strings
insert into cities (name, country, population, area) values('Tokyo','Japan',38505000, 8223); -- can be also written as upto values and insert all the details
insert into cities (name, country, population, area) values('India','Delhi',28125000, 2240);-- wrote country name as city name(Error)
insert into cities (name,country,population, area) values ('Shanghai','China',2215000, 4015);
insert into cities (name,country,population, area) values ('Sao Paulo','Brazil',20935000, 3043);
select * from cities;
update  cities set name= 'Delhi' where name = 'India' ; -- to fix the above error
update  cities set country= 'India' where country = 'Delhi' ; --to fix the above error
select name, country from cities;
select name, population/area as population_density from cities; -- to write a new column name and add the values
-- using string operators and function
select name|| ','|| country as location from cities; -- to use concantation of strings
select concat(name,',',country) as location from cities;-- same solution using concat function
select concat(upper(name),',',upper(country)) as location from cities; -- to use upper function , length(), lower()
select upper(concat(name, ', ', country)) as location from cities;-- to use the upper function together

