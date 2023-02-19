-- objetivo: converter os números dos dias da semana em actual dias da semana...
SELECT week_day,
    CASE
        WHEN week_day = 0 THEN 'Sunday'
        WHEN week_day = 1 THEN 'Monday'
        WHEN week_day = 2 THEN 'Tuesday'
        WHEN week_day = 3 THEN 'Wednesday'
        WHEN week_day = 4 THEN 'Thursday'
        WHEN week_day = 5 THEN 'Friday'
        WHEN week_day = 6 THEN 'Saturday'
        ELSE 'CRAP'
    END
FROM (
        SELECT EXTRACT(
                DOW
                FROM last_checkin
            ) AS week_day
        FROM memberships
    ) AS week_numbers_test; --- ESTE ÚLTIMO ALIAS É ABSOLUTAMENTE NECESSÁRIO, POIS TODAS AS TABLES, SEJAM ELAS ARMAZENADAS NA MEMÓRIA OU NA DATABASE, PRECISAM SER IDENTIFCADAS (é obrigatório)...
        -- e esse ALIAS aqui, de 'week_numbers_test' SE REFERE A NOSSA SUBQUERY do 'DOW'...


-- SELECT EXTRACT(DOW FROM last_checkin) FROM memberships;  --- retorna 5 3 5 1