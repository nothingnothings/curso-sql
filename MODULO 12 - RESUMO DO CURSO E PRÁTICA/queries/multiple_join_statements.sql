SELECT *
FROM cities AS c
    LEFT JOIN locations as l ON l.city_id = c.id
    LEFT JOIN events AS e ON e.location_id = l.id;