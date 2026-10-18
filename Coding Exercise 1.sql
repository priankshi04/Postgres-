-- You don't need to change these lines
CREATE TABLE movies (
    title VARCHAR(60),
    box_office INTEGER
);

INSERT INTO movies (title, box_office)
VALUES
    ('The Avengers', 1500000000),
    ('Batman v Superman', 873000000);


-- WRITE YOUR SOLUTION BELOW THIS LINE!
    SELECT * from movies;