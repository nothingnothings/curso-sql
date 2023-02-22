SELECT *
FROM locations AS l
    LEFT JOIN events AS e ON l.id = e.location_id