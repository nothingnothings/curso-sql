SELECT *
FROM cities AS c
    LEFT JOIN locations AS l ON l.city_id = c.id;