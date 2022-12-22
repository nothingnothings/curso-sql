CREATE TABLE users (
    id SERIAL PRIMARY KEY, -- só podemos ter 1 PRIMARY KEY POR TABLE
    full_name VARCHAR(255) NOT NULL,
    salary INT
)







---OBS:  a sintaxe de 'SERIAL PRIMARY KEY' funciona também com o mysql, mas não é tão usada...