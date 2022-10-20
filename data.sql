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

UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE species_id IS NULL;

UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name = 'Gabumon' OR name = 'Pikachu';
UPDATE animals SET owner_id = 3 WHERE name = 'Devimon' OR name = 'Plantmon';
UPDATE animals SET owner_id = 4 WHERE name = 'Charmander' OR name = 'Blossom' OR name = 'Squirtle';
UPDATE animals SET owner_id = 5 WHERE name = 'Angemon' OR name = 'Boarmon';
