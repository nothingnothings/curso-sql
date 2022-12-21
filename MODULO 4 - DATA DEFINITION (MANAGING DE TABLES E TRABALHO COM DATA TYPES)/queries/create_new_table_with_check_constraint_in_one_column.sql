CREATE TABLE users (
    full_name VARCHAR(300) NOT NULL,
    yearly_salary INT CHECK (yearly_salary > 0) -- poderemos ainda ADICIONAR ROWS COM VALUE DE 'NULL' em yearly_salary (omitir o value dessa column); ENTRETANTO, SE FORMOS ADICIONAR 1 ROW COM ESSA COLUMN PREENCHIDA, SEU VALUE DEVERÁ SER MAIOR DO Q zero, pq essa é a condição que definimos com esse constraint de CHECK...
);








---EX (COMBINANDO CONDITIONS NA SUA CONSTRAINT DE 'CHECK'):

--  CREATE TABLE users (
--    full_name VARCHAR(300) NOT NULL,
--    yearly_salary INT CHECK(yearly_salary > 0 AND yearly_salary < 100.000)
--  );











--> EXEMPLO DE 'TABLE-WIDE' CHECK CONSTRAINT (checamos/garantimos o value de 'yearly_salary' em relação à column de 'max_salary'):




-- CREATE TABLE users (
--    full_name VARCHAR(300) NOT NULL,
--    yearly_salary INT,
--    CHECK (yearly_salary < max_salary
--    )

-- )


