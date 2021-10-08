CREATE TABLE animals(
  id SERIAL PRIMARY KEY, 
  name VARCHAR(50), 
  type TEXT, 
  age INTEGER
);

INSERT INTO animals ( name, type, age )
VALUES ('Leo', 'lion', 12), ('Jerry', 'mouse', 4), ('Marty', 'zebra', 10), ('Gloria', 'hippo', 8), ('Alex', 'lion', 9), ('Melman', 'giraffe', 15), ('Nala', 'lion', 2), ('Marie', 'cat', 1), ('Flounder', 'fish', 8);

ALTER TABLE animals
ADD location VARCHAR;

INSERT INTO animals
(age, type, name)
VALUES
(8, 'Dog', 'Pistol'),(10, 'Dog', 'Oscar'),
(12, 'Dog', 'Theo');

ALTER TABLE animals
RENAME COLUMN type TO species;

ALTER TABLE animals
ALTER COLUMN species VARCHAR;