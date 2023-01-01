-- SELECT c.city_name
-- FROM cities as c;
-- SELECT c.city_name
-- FROM cities as c





-- SELECT c.city_name,
--     a.street
-- FROM cities as c
--     INNER JOIN addresses AS a ON a.city_id = c.id;



-- SELECT c.city_name
SELECT city_name, first_name, last_name
FROM cities as c
    LEFT JOIN addresses AS a ON a.city_id = c.id
    -- INNER JOIN users AS u ON a.id = u.address_id;
        LEFT JOIN users AS u ON a.id = u.address_id;