
-- DROP TABLE users;
-- DROP TABLE addresses;
-- DROP TABLE cities;


------1
CREATE TABLE cities ( --- deve ser criada primeiro, pq addresses vai a referenciar... e addresses, por sua vez, vai ser referenciada por 'users'.. essa é a ordem correta... (ordem correta do define da foreign key constraint....)
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL
);

-------2 (precisa de 'cities' para definir o 'city_id')
CREATE TABLE addresses (
    id SERIAL PRIMARY KEY,
    street VARCHAR(300) NOT NULL,
    house_number VARCHAR(300) NOT NULL,
    city_id INT NOT NULL
);

------3 precisa de 'addresses' para definir o 'address_id'
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT NULL,
    address_id INT REFERENCES addresses(id) ON DELETE RESTRICT
     -- address_id INT REFERENCES addresses(id) ON DELETE NO ACTION --- É O DEFAULT (impede operations que deletem o record de 'address' relacionado a esse field, COM A EXCEÇÃO DE OPERAÇÕES DE DELETE DENTRO DE TRANSACTIONS)
    -- address_id INT REFERENCES addresses(id) ON DELETE RESTRICT  --- quase a mesma coisa que default, mas ainda mais restrito
     -- address_id INT REFERENCES addresses(id) ON DELETE CASCADE
      -- address_id INT REFERENCES addresses(id) ON DELETE SET NULL
       -- address_id INT REFERENCES addresses(id) ON DELETE SET DEFAULT
);
-- CREATE TABLE addresses (
--     id SERIAL PRIMARY KEY,
--     street VARCHAR(300) NOT NULL,
--     house_number VARCHAR(300) NOT NULL,
--     city_id INT NOT NULL,
-- );
-- CREATE TABLE cities ( //deve ser criada primeiro, pq addresses vai a referenciar... e addresses, por sua vez, vai ser referenciada por 'users'.. essa é a ordem correta... (ordem correta do define da foreign key constraint....)
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(300) NOT NULL,
-- );


















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