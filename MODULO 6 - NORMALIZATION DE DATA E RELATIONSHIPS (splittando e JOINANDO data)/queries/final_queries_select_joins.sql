-- SELECT * FROM employees AS e
-- LEFT JOIN projects_employees AS pe ON e.id = pe.employee_id
-- LEFT JOIN projects AS p ON p.id = pe.project_id;




--- mesma coisa que o query ali de cima, mas com menos data sendo retornada (apenas algumas colummns das tables, e não toda a data de todas as tables queriadas....)
SELECT e.id AS employee_id, first_name, last_name, p.title FROM employees AS e
LEFT JOIN projects_employees AS pe ON e.id = pe.employee_id
LEFT JOIN projects AS p ON p.id = pe.project_id;





