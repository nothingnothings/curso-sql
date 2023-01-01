DROP TABLE cities;
DROP TABLE addresses;
DROP TABLE users;
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(200) NOT NULL,
    address_id SERIAL UNIQUE NOT NULL --devemos usar o MESMO DATA TYPE do field 'id' do addresses (e isso devemos fazer sempre, no caso, com qualquer foreign key que escrevermos)
);
CREATE TABLE addresses (
    id SERIAL PRIMARY KEY,
    street VARCHAR(255) NOT NULL,
    house_number INT NOT NULL,
    city_id SERIAL NOT NULL
);
CREATE TABLE cities (
    id SERIAL PRIMARY KEY,
    city_name VARCHAR(255) NOT NULL
);