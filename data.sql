/* Populate database with sample data. */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg ) VALUES (9, 'Agumon', '02-3-2020', 0, true, 10.23);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg ) VALUES (10 ,'Gabumon', '11-15-2018', 2, true, 8);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg ) VALUES (11 ,'Pikachu', '1-7-2021', 1, false, 15.04);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg ) VALUES (12 ,'Devimon', '5-12-2017', 5, true, 11);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg ) VALUES (1, 'Charmander', '02-08-2020', 0, false, 11);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg ) VALUES (2 ,'Plantmon', '11-15-2021', 2, true, 5.7);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg ) VALUES (3 ,'Squirtle', '04-02-2021', 3, false, 12.13);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg ) VALUES (4 ,'Angemon', '01-12-2005', 1, true, 45);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg ) VALUES (6 ,'Boarmon', '01-07-2005', 7, true, 20.4);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg ) VALUES (7 ,'Blossom', '10-13-1998', 3, true, 17);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg ) VALUES (8 ,'Ditto', '05-14-2022', 4, true, 22);

INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34);
INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', 19);
INSERT INTO owners (full_name, age) VALUES ('Bob', 45);
INSERT INTO owners (full_name, age) VALUES ('Melody Pond', 77);
INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', 14);
INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker', 38);

INSERT INTO species (name) VALUES ('Pokemon');
INSERT INTO species (name) VALUES ('Digimon');

INSERT INTO vets (name, age, date_of_graduation) VALUES ('William Tatcher', 45, '04-23-2000');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Maisy Smith', 26, '01-17-2019');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Stephanie Mendez', 64, '05-04-1981');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Jack Harkness', 38, '06-08-2008');

INSERT INTO specializations (vet_id, species_id) VALUES (1, 1);
INSERT INTO specializations (vet_id, species_id) VALUES (3, 2);
INSERT INTO specializations (vet_id, species_id) VALUES (3, 1);
INSERT INTO specializations (vet_id, species_id) VALUES (4, 2);

INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (9, 1, '2020-05-24');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (9, 3, '2020-07-22');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (10, 4, '2021-02-02');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (11, 2, '2020-01-05');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (11, 2, '2020-03-8');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (11, 2, '2020-05-14');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (12, 3, '2021-05-04');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (1, 4, '2021-02-24');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (2, 2, '2019-12-21');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (2, 1, '2020-08-10');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (2, 2, '2021-04-07');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (3, 3, '2019-09-29');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (9, 4, '2021-10-03');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (9, 4, '2020-11-04');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (6, 2, '2019-01-24');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (6, 2, '2019-05-15');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (6, 2, '2020-02-27');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (6, 2, '2020-08-03');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (7, 3, '2020-05-24');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (7, 1, '2021-01-11');


UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE species_id IS NULL;

UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name = 'Gabumon' OR name = 'Pikachu';
UPDATE animals SET owner_id = 3 WHERE name = 'Devimon' OR name = 'Plantmon';
UPDATE animals SET owner_id = 4 WHERE name = 'Charmander' OR name = 'Blossom' OR name = 'Squirtle';
UPDATE animals SET owner_id = 5 WHERE name = 'Angemon' OR name = 'Boarmon';
