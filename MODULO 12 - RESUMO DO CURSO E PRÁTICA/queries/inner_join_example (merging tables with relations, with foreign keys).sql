SELECT *
FROM events AS e
    INNER JOIN locations AS l ON l.id = e.location_id