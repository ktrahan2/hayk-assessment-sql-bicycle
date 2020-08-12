-- Create a table, `owners`
CREATE TABLE owners (
    id INTEGER PRIMARY KEY,
        name TEXT
);
-- Create a related table, `bicycles`
CREATE TABLE bicycles (
    id INTEGER PRIMARY KEY,
        model TEXT,
        owner_id INTEGER
);
-- Create 3 bicycles and 2 owners
INSERT INTO owners (name) VALUES ('Kyle');
INSERT INTO owners (name) VALUES ('Nate');
INSERT INTO bicycles (model, owner_id) VALUES ("model1", 1);
INSERT INTO bicycles (model, owner_id) VALUES ("model2", 1);
INSERT INTO bicycles (model, owner_id) VALUES ("model3", 2);
-- Update the properties of one of the bicycles
UPDATE bicycles SET model = "model4" WHERE model = "model2";
-- List all the bicycles
SELECT * FROM bicycles;
-- List all the bicycles with their owners ???
SELECT bicycles.model, owners.name FROM owners INNER JOIN bicycles ON owners.id = bicycle.owner_id;
-- Delete one of the bicycles
DELETE FROM bicycles WHERE model = "model1";
