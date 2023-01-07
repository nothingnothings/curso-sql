CREATE TABLE company_buildings (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE teams(
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL,
    building_id INT REFERENCES company_buildings ON DELETE SET NULL  ---- se 1 das buildings for DELETADA da database, esse field, nos records 'teams' relacionados, ficará como NULL...
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    team_id INT DEFAULT 1 REFERENCES teams ON DELETE SET DEFAULT
);
CREATE TABLE intranet_accounts (
    id SERIAL PRIMARY KEY,
    email VARCHAR(200) REFERENCES employees(email) ON DELETE CASCADE,
    --- com 'one-to-one' relationships, BASTA DEFINIR A RELATION EM 1 COLUMN, DE 1 DAS TABLES (não é necessário fazer isso nas 2)...
    -- se o EMPLOYEE É DELETADO, o record de 'intranet_account' correspondente também o é...
    password VARCHAR(200) NOT NULL
);
