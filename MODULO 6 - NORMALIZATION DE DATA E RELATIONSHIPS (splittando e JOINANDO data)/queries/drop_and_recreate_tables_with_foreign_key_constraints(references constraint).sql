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


















--> SIDE NOTE: SE VOCÊ 

-- QUER FAZER UMA RELATION DESSA COLUMN COM __ A 'PRIMARY KEY'



-- DA OUTRA TABLE,

-- DIRETAMENTE,


-- VOCê 


-- PODE SIMPLESMENTE OMITIR ESSA ESPECIFICAÇÃO (esse '(id)' ),



-- TIPO ASSIM:








-- '''''''''''''''''''''''''

-- address_id INT REFERENCES addresses

-- ''''''''''''''''''''





-- --> SE VOCÊ QUER __ SETTAR_ _ UMA RELATION __ COM A PRIMARY KEY DESSA TABLE,




-- ISSO É FINE...