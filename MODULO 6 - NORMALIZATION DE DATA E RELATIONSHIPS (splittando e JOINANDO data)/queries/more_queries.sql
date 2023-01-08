-- SELECT e.id AS employee_id,
--     e.first_name,
--     e.last_name,
--     t.name,
--     t.id
-- FROM employees AS e
--     INNER JOIN teams AS t ON e.team_id = t.id
-- WHERE t.id = 2;


SELECT e.first_name,
    e.last_name
FROM employees as e
    INNER JOIN teams AS t ON e.team_id = t.id
    INNER JOIN company_buildings AS b ON t.building_id = b.id
WHERE b.id = 3;
-- ORDER BY e.birthdate;