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

SELECT animals.name FROM animals JOIN visits ON animals.id = visits.animal_id JOIN vets ON vets.id = visits.vet_id WHERE vets.name = 'William Tatcher' ORDER BY visits.date_of_visit DESC LIMIT 1;
SELECT  animals.name FROM animals JOIN vets ON vets.name = 'Stephanie Mendez' JOIN visits ON visits.vet_id = vets.id GROUP BY animals.name;
SELECT vets.name, species.name FROM vets LEFT JOIN specializations ON vets.id = specializations.vet_id LEFT JOIN species ON specializations.species_id = species.id;
SELECT animals.name FROM animals JOIN visits ON visits.animal_id = animals.id JOIN vets ON vets.id = visits.vet_id WHERE vets.name = 'Stephanie Mendez' AND visits.date_of_visit BETWEEN '2020-04-01' AND '2020-08-30';
SELECT animals.name, COUNT(visits.id) AS visits FROM animals JOIN visits ON visits.animal_id = animals.id GROUP BY animals.name ORDER BY visits DESC LIMIT 1;
SELECT animals.name FROM vets JOIN visits ON visits.vet_id = vets.id JOIN animals ON animals.id = visits.animal_id WHERE vets.name = 'Maisy Smith' ORDER BY visits.date_of_visit LIMIT 1;
SELECT animals.name, vets.name, visits.date_of_visit FROM animals JOIN visits ON visits.animal_id = animals.id JOIN vets ON vets.id = visits.vet_id ORDER BY visits.date_of_visit DESC LIMIT 1;
SELECT COUNT(visits.id) FROM visits JOIN vets ON vets.id = visits.vet_id JOIN animals ON animals.id = visits.animal_id JOIN specializations ON specializations.vet_id = vets.id JOIN species ON species.id = specializations.species_id WHERE species.id != animals.species_id;
SELECT species.name FROM vets JOIN visits ON visits.vet_id = vets.id JOIN animals ON animals.id = visits.animal_id JOIN specializations ON specializations.vet_id = vets.id JOIN species ON species.id = specializations.species_id WHERE vets.name = 'Maisy Smith' GROUP BY species.name ORDER BY COUNT(species.name) DESC LIMIT 1;

