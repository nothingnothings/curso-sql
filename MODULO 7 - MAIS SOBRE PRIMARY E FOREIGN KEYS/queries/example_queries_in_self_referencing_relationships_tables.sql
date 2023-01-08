SELECT *
FROM employees as e1
    INNER JOIN employees as e2 ON e1.supervisor_id = e2.id; --- ou seja, 'PODEMOS FAZER JOIN DE 1 TABLE COM ELA MESMA'