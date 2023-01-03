DROP TABLE cities;
DROP TABLE addresses;
DROP TABLE users;
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT NULL,
    -- address_id INT NOT NULL,
    address_id INT REFERENCES addresses(id),
);
CREATE TABLE addresses (
    id SERIAL PRIMARY KEY,
    street VARCHAR(300) NOT NULL,
    house_number VARCHAR(300) NOT NULL,
    city_id INT NOT NULL,
);
CREATE TABLE cities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL,
);