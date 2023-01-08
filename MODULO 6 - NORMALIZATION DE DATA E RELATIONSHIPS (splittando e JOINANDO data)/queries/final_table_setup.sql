CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    title VARCHAR(250) NOT NULL,
    deadline DATE
);
CREATE TABLE company_buildings (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
CREATE TABLE teams(
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL,
    building_id INT REFERENCES company_buildings ON DELETE
    SET NULL
);
---- se 1 das buildings for DELETADA da database, esse field, nos records 'teams' relacionados, ficará como NULL...
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    team_id INT DEFAULT 1 REFERENCES teams ON DELETE
    SET DEFAULT
);
CREATE TABLE intranet_accounts (
    id SERIAL PRIMARY KEY,
    email VARCHAR(200) REFERENCES employees(email) ON DELETE CASCADE,
    password VARCHAR(200) NOT NULL
);
--- com 'one-to-one' relationships, BASTA DEFINIR A RELATION EM 1 COLUMN, DE 1 DAS TABLES (não é necessário fazer isso nas 2)...
-- se o EMPLOYEE É DELETADO, o record de 'intranet_account' correspondente também o é...
-- intermediate table (n:n)
-- tables intermediárias são GERALMENTE CRIADAS AO FINAL, DEPOIS DO CREATE DAS 2 RELATED TABLES A ELA...
CREATE TABLE projects_employees(
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees ON DELETE CASCADE,
    ---- queremos que todos os records correspondentes a esse EMPLOYEE, nessa table de 'projects_employees', também sejam removidos a partir de sua deleção..
    project_id INT REFERENCES projects ON DELETE CASCADE --- mesma coisa aqui, pq também vmaos querer remover as entries relativas a esse 'project_id', nessa nossa table...
);
--- table intermediária de 'projects' e 'employees' ---> INTERMEDIATE TABLES SÃO SEMPRE CRIADAS PARA HANDLAR 'MANY-TO-MANY' RELATIONSHIPS (1 mesmo employee pode participar de múltiplos projects, e cada project pode ter múltiplos employees)....