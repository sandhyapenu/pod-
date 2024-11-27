-- Create a sample table and insert some data
CREATE TABLE example_table (
    id serial PRIMARY KEY,
    name VARCHAR (100) NOT NULL
);

INSERT INTO example_table (name) VALUES ('John Doe');
INSERT INTO example_table (name) VALUES ('Jane Doe');

