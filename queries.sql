/*Queries that provide answers to the questions from all projects.*/

UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species != 'digimon';
BEGIN TRANSACTION;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT DELET_ONE;
UPDATE animals set weight_kg = (weight_kg*-1) WHERE weight_kg < 0;
ROLLBACK TO DELET_ONE;
UPDATE animals set weight_kg = (weight_kg*-1) WHERE weight_kg < 0;
COMMIT;
SELECT * FROM animals ORDER BY id;
SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT MAX(escape_attempts) FROM animals WHERE neutered = true or neutered = false;
SELECT MAX(weight_kg), MIN(weight_kg) FROM animals GROUP BY species;
SELECT AVG(escape_attempts) FROM animals  WHERE date_of_birth  BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;

SELECT name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Melody Pond';
SELECT * FROM animals JOIN species on animals.species_id = species.id WHERE species.name = 'Pokemon';
SELECT owners.full_name, animals.name from owners LEFT JOIN animals ON owners.id = animals.owner_id ORDER By owners.id;
SELECT species_id, COUNT(*) AS animals FROM animals GROUP By species_id;
SELECT * FROM species JOIN owners ON owners.full_name = 'Jennifer Orwell' WHERE species.name = 'Digimon';
SELECT * FROM animals JOIN owners ON owners.full_name = 'Dean Winchester' WHERE animals.escape_attempts=0;
SELECT owners.full_name, Ceil(COUNT(animals.id)) as number_of_animals  FROM owners LEFT JOIN animals on owners.id = animals.owner_id GROUP BY owners.id ORDER BY number_of_animals DESC LIMIT 1;
