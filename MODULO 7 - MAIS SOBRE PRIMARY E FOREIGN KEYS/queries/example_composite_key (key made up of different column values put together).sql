CREATE TABLE projects_employees (
    --- ID SERIAL PRIMARY KEY -- é a surrogate key, que foi removida...
    employee_id INT,
    project_id INT,
    PRIMARY KEY (employee_id, project_id) ----- EIS O CÓDIGO EM QUESTÃO. -- esse é um excemplo de 'REAL KEY', pq é formada por values 'NÃO ARTIFICIAIS' (ao contrário do field de 'id' como a primary key, que teoricamente é ARTIFICIAL)...
)