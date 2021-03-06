DROP TABLE IF EXISTS cities;
DROP TABLE IF EXISTS countries;

CREATE TABLE countries(
    id SERIAL PRIMARY KEY,
    country_name VARCHAR(255),
    visited BOOLEAN
);

CREATE TABLE cities(
    id SERIAL PRIMARY KEY,
    city_name VARCHAR(255),
    country_id INT REFERENCES countries(id) ON DELETE CASCADE ON UPDATE SET NULL,
    visited BOOLEAN
);





