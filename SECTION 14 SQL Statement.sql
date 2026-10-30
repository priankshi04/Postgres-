create table prod(id serial primary key, name varchar(40), department varchar(40), prices integer, weights integer);
insert into prod (name, department, prices, weights)values ('Shirts','Clothes',20,1);
alter table prod alter column prices set not null;--either edit during creation of table or use alter statement for null constraints
alter table prod alter column prices set default 99;-- to set default value
alter table prod add unique (name);--to add constrain unique
alter table prod add check (prices>0);-- need to used parenthesis
create table ord(id serial primary key, name varchar(40) not null, created_at timestamp not null, est_delivery timestamp not null check(created_at<est_delivery);
--to keep a condition that the delivery date is be greater than than the day created  

