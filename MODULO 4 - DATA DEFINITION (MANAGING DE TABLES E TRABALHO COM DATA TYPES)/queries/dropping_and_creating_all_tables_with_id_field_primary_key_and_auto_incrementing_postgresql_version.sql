DROP TABLE users;
DROP TABLE conversations;
DROP TABLE employers;



CREATE TYPE employment_status AS ENUM('self-employed', 'employed', 'unemployed');
--versao POSTGRES
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(300) NOT NULL,
    yearly_salary INT CHECK(yearly_salary > 0),
    current_status employment_status -- código enum QUE FUNCIONA PARA O MYSQL...
);
CREATE TABLE employers (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(300) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    yearly_revenue FLOAT CHECK(yearly_revenue > 0),
    is_hiring BOOLEAN DEFAULT false
);
CREATE TABLE conversations (
    id SERIAL PRIMARY KEY,
    -- id da própria table
    user_id INT,
    --identifica o USER envolvido nessa conversation
    employer_id INT,
    --identifica o EMPLOYER envolvido nessa conversation
    message TEXT NOT NULL,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);