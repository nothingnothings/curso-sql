-- SELECT COUNT(*), c.name
-- FROM cities AS c
--     LEFT JOIN locations AS l ON l.city_id = c.id
-- GROUP BY(c.id);



SELECT COUNT(*), c.name, l.street
FROM cities AS c
    LEFT JOIN locations AS l ON l.city_id = c.id
GROUP BY(c.id, l.street)
ORDER BY(c.name);