Creating and Using Foreign Keys
You are building a database for a naval shipping company.  You need to store a list of boats and the crew members who work on each, so you create a table called boats and a table called crew_members.  From the perspective of a boat, this is a one-to-many relationship.

To complete this design, you need to do two things:

Add a column to the crew_members table definition that will relate crew_members to boats.  You should call this foreign key column boat_id

Write a query that will fetch all columns for all crew_members associated with the boat that has an ID of 1.
--SQL QUERY
-- Create table called 'boats'
CREATE TABLE boats (
    -- Note that this environment doesn't support 'SERIAL' keyword
    -- so 'AUTOINCREMENT' is used instead. Postgres always uses 'SERIAL'
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR
);


-- Insert two boats 
INSERT INTO boats (name)
VALUES ('Rogue Wave'), ('Harbor Master');


-- Create table called 'crew_members'
CREATE TABLE crew_members (
    -- Note that this environment doenst support 'SERIAL' keyword
    -- so 'AUTOINCREMENT' is used instead. Postgres always uses 'SERIAL'
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR,
    -- >>>>>>>> TODO #1 HERE!!! 
    boat_id int references boats(id)
    
);

-- Insert three crew members
INSERT INTO crew_members (first_name, boat_id)
VALUES ('Alex', 1), ('Lucia', 1), ('Ari', 2);


-- Write query here to fetch all columns for all crew_members associated with the boat that has an ID of 1
-- >>>>>>>> TODO #2 HERE!!!
select * from crew_members where boat_id=1
