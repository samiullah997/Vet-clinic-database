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

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name varchar(100)
);
