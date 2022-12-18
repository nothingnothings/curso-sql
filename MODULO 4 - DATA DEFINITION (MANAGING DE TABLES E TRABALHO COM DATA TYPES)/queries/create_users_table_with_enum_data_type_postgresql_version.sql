CREATE TYPE my_status AS ENUM('employed', 'unemployed', 'self-employed'); --CRIAÇÃO DE 1 CUSTOM TYPE (de tipo 'enum', nesse caso)


 CREATE TABLE users (
    full_name VARCHAR(200),
    yearly_salary INT,
    current_status my_status -- USO DE 1 CUSTOM TYPE (que é 1 type de 'enum', nesse caso aqui)
);