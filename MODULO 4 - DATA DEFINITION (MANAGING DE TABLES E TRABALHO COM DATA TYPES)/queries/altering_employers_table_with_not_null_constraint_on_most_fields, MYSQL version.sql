ALTER TABLE employers 
MODIFY COLUMN company_name VARCHAR(300) NOT NULL,   --no MYSQL, somos forçados a REPETIR TODA A DEFINIÇÃO DA COLUMN, para settar uma CONSTRAINT no seu interior....
MODIFY COLUMN current_status ENUM('employed', 'unemployed', 'self-employed');