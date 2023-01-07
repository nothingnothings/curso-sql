-- DROP TABLE projects;
-- DROP TABLE intranet_accounts;
-- DROP TABLE employees;
-- DROP TABLE teams;
-- DROP TABLE company_buildings;
-- CREATE TABLE projects (
--     id SERIAL PRIMARY KEY,
--     project_name VARCHAR(255) NOT NULL
-- );
-- CREATE TABLE company_buildings (
--     id SERIAL PRIMARY KEY,
--     building_name VARCHAR(255) NOT NULL
-- );
-- CREATE TABLE teams (
--     id SERIAL PRIMARY KEY,
--     team_name VARCHAR(255) NOT NULL,
--     building_id SERIAL REFERENCES company_buildings(id)
-- );
-- CREATE TABLE intranet_accounts (
--     id SERIAL PRIMARY KEY,
--     user_name VARCHAR(255) NOT NULL,
--     employee_id SERIAL
--     -- employee_id SERIAL REFERENCES employees(id)
-- );
-- CREATE TABLE employees (
--     id SERIAL PRIMARY KEY,
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL,
--     -- intranet_account_id SERIAL REFERENCES intranet_accounts(id),
--     intranet_account SERIAL,
--     team_id SERIAL REFERENCES teams(id)
-- );
-- ALTER TABLE employees
-- ADD FOREIGN KEY intranet_account REFERENCES intranet_accounts(id) ON DELETE RESTRICT;
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL
);
CREATE TABLE intranet_accounts (
    id SERIAL PRIMARY KEY,
    email VARCHAR(200) REFERENCES employees(email) ON DELETE CASCADE,
    --- com 'one-to-one' relationships, BASTA DEFINIR A RELATION EM 1 COLUMN, DE 1 DAS TABLES (não é necessário fazer isso nas 2)...
    -- se o EMPLOYEE É DELETADO, o record de 'intranet_account' correspondente também o é...
    password VARCHAR(200) NOT NULL
);