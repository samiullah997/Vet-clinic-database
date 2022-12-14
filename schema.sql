/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id int,
    name varchar(100),
    date_of_birth DATE,
    escape_attempts int,
    neutered boolean,
    weight_kg decimal,
    species varchar(100)
);

ALTER TABLE animals ALTER COLUMN id SET DEFAULT nextval('animals_id_seq');
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD CONSTRAINT id PRIMARY KEY (id);
ALTER TABLE animals ADD COLUMN species_id int;
ALTER TABLE animals ADD COLUMN owner_id int;
ALTER TABLE animals ADD CONSTRAINT species_id FOREIGN KEY (species_id) REFERENCES species(id);
ALTER TABLE animals ADD CONSTRAINT owners_id FOREIGN KEY (owner_id) REFERENCES owners(id);



CREATE TABLE owners (
    id serial PRIMARY KEY,
    full_name varchar(100),
    age int
);

ALTER TABLE owners ADD COLUMN email VARCHAR(120);

-- create index for owners
CREATE INDEX owners_email_idx ON owners (email);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name varchar(100)
);

CREATE TABLE vets (
    id SERIAL PRIMARY KEY,
    name varchar(100),
    age int,
    date_of_graduation DATE
);

CREATE TABLE specializations (
    id SERIAL PRIMARY KEY,
    species_id int,
    vet_id int,
    CONSTRAINT species_id FOREIGN KEY (species_id) REFERENCES species(id),
    CONSTRAINT vet_id FOREIGN KEY (vet_id) REFERENCES vets(id)
);

CREATE TABLE visits (
    id SERIAL PRIMARY KEY,
    animal_id int,
    vet_id int,
    date_of_visit DATE,
    CONSTRAINT animal_id FOREIGN KEY (animal_id) REFERENCES animals(id),
    CONSTRAINT vet_id FOREIGN KEY (vet_id) REFERENCES vets(id)
);

-- create index for visits
CREATE INDEX visits_animal_id_index ON visits (animal_id);
CREATE INDEX visits_vet_id_index ON visits (vet_id);