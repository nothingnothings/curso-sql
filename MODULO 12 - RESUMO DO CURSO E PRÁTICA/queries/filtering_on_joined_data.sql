SELECT *
FROM cities AS c
    LEFT JOIN locations as l ON l.city_id = c.id
    LEFT JOIN events AS e ON e.location_id = l.id
WHERE c.name = 'Munich';  -- ESSE FILTER É APLICADO __ SOBRE _ O RESULT SET ANTERIOR, AQUELE RESULT SET EXTRAÍDO DAQUELES 2 STATEMENTS DE 'LEFT JOIN'...