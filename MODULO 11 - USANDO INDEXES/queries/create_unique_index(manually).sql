

--  PARA CONSEGUIR UM 'UNIQUE INDEX' (index em que NENHUM VALUE DAQUELA COLUMN PODE SER 
-- REPETIDO), temos 2 opções:





-- 1 CRIAR 1 TABLE COM UMA CONSTRAINT DE 'UNIQUE' NA COLUMN, INICIALMENTE, tipo assim:


-- CREATE TABLE users (
--     id SERIAL PRIMARY KEY,
--     first_name VARCHAR(300) NOT NULL,
--     last_name VARCHAR(300) NOT NULL,
--     email VARCHAR(300) UNIQUE NOT NULL, ----- TIPO ASSIM...
--     salary INT CHECK (salary > 0)
-- );








-- OU, ENTÃO, SE A TABLE JÁ FOI CRIADA, DEFINIR ___ O __  UNIQUE INDEX, NA COLUMN, TIPO ASSIM:



CREATE UNIQUE INDEX salaryidx ON users (email);