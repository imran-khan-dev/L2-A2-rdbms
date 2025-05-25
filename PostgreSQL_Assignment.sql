-- Table 1 created
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

-- Table 2 created
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

-- Table 3 created
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

-- Table 1 data insert
INSERT INTO
    rangers (name, region)
VALUES (
        'conservation_status',
        'Northern Hills'
    ),
    ('Bob White', 'River Delta'),
    (
        'Carol King',
        'Mountain Range'
    )

UPDATE rangers
SET
    name = 'Alice Green'
WHERE
    name = 'conservation_status';

-- Table 2 data insert
INSERT INTO
    species (
        common_name,
        scientific_name,
        discovery_date,
        conservation_status
    )
VALUES (
        'Snow Leopard',
        'Panthera uncia',
        '1775-01-01',
        'Endangered'
    ),
    (
        'Bengal Tiger',
        'Panthera tigris tigris',
        '1758-01-01',
        'Endangered'
    ),
    (
        'Red Panda',
        'Ailurus fulgens',
        '1825-01-01',
        'Vulnerable'
    ),
    (
        'Asiatic Elephant',
        'Elephas maximus indicus',
        '1758-01-01',
        'Endangered'
    );

-- Table 3 data insert
INSERT INTO
    sightings (
        species_id,
        ranger_id,
        location,
        sighting_time,
        notes
    )
VALUES (
        1,
        1,
        'Peak Ridge',
        '2024-05-10 07:45:00',
        'Camera trap image captured'
    ),
    (
        2,
        2,
        'Bankwood Area',
        '2024-05-12 16:20:00',
        'Juvenile seen'
    ),
    (
        3,
        3,
        'Bamboo Grove East',
        '2024-05-15 09:10:00',
        'Feeding observed'
    ),
    (
        1,
        2,
        'Snowfall Pass',
        '2024-05-18 18:30:00',
        NULL
    );

-- Problem 1
INSERT INTO
    rangers (name, region)
VALUES ('Derek Fox', 'Coastal Plains');

-- Problem 2
SELECT COUNT(DISTINCT species_id) AS unique_species_sighted
FROM sightings;

-- Problem 3
SELECT * FROM sightings WHERE location LIKE '%Pass%'

-- Problem 4
SELECT r.name, COUNT(s.sighting_id) AS total_sightings
FROM rangers r
    LEFT JOIN sightings s ON r.ranger_id = s.ranger_id
GROUP BY
    r.name;

-- Problem 5
SELECT s.common_name
FROM species s
    LEFT JOIN sightings si ON s.species_id = si.species_id
WHERE
    si.sighting_id IS NULL;