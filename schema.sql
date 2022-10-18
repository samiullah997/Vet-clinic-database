/* Database schema to keep the structure of entire database. */

ALTER TABLE animals (
    id int,
    name varchar(100),
    date_of_birth DATE,
    escape_attempts int,
    neutered boolean,
    weight_kg decimal,
    species varchar(100)
);
