-- Table 1
CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    region VARCHAR(40) NOT NULL
)

ALTER TABLE rangers
ALTER COLUMN name
SET NOT NULL,
ALTER COLUMN region
SET NOT NULL;

-- Table 2
CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(30) NOT NULL,
    scientific_name VARCHAR(50) NOT NULL,
    discovery_date DATE,
    conservation_status VARCHAR(50)
)

ALTER TABLE species
ALTER COLUMN discovery_date
SET NOT NULL,
ALTER COLUMN conservation_status
SET NOT NULL;

-- Table 3
CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INT NOT NULL,
    species_id INT NOT NULL,
    sighting_time TIMESTAMP NOT NULL,
    location VARCHAR(50) NOT NULL,
    notes VARCHAR(200),
    CONSTRAINT fk_ranger FOREIGN KEY (ranger_id) REFERENCES rangers (ranger_id),
    CONSTRAINT fk_species FOREIGN KEY (species_id) REFERENCES species (species_id)
)


