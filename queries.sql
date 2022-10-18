/*Queries that provide answers to the questions from all projects.*/

UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species != 'digimon';
BEGIN TRANSACTION;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT DELET_ONE;
UPDATE animals set weight_kg = (weight_kg*-1);
ROLLBACK TO DELET_ONE;
UPDATE animals set weight_kg = (weight_kg*-1);
COMMIT;
SELECT * FROM animals ORDER BY id;
SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts <= 0;
SELECT AVG(weight_kg) FROM animals;
SELECT MAX(escape_attempts) FROM animals;
SELECT MAX(weight_kg) FROM animals;
SELECT MIN(weight_kg) FROM animals;
SELECT AVG(escape_attempts) FROM animals WHERE date_of_birth  BETWEEN '1990-01-01' AND '2000-12-31';
