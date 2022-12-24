CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    --CONCAT() É UMA FUNÇÃO QUE EXISTE NO SQL...
    full_name VARCHAR(401) GENERATED ALWAYS AS (CONCAT(first_name, "", last_name)),
    --assim, 'full_name' SERÁ UMA COLUMN CUJO VALUE SERÁ CONSTRUÍDO A PARTIR DE 'first_name' e 'last_name'
    yearly_salary INT CHECK (yearly_salary > 0),
    current_status ENUM('self-employed', 'employed', 'unemployed')
);