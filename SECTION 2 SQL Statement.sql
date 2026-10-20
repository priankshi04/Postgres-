--FILTERING ROWS WITH "WHERE"
select name ,area from cities where area>4000;
select name, area from cities where area between 2000 and 4000;-- to use between clause for comparison
select name, area from cities where name in ('Delhi','Shanghai'); -- to get details that are present in this list
select name, area from cities where area not in (3043,8223) or name='Delhi';-- compound check
select name, population/area as population_density from cities where population/area>6000; -- in where clause can use string and mathematical operations
update cities set population= 39505000 where name='Tokyo';-- to update a row
delete from cities where name='Tokyo'; -- to delete row  
