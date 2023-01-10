-- ainda podemos escrever OUTER OUTER QUERIES (nestear o quanto quisermos)...
SELECT booking_date
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) = (         -- esta é a OUTER QUERY... É EXECUTADA EM CIMA DO RESULTADO DA 'nested subquery'...
        SELECT MIN(daily_table.daily_sum) AS min_daily_sum --- a keyword de 'FROM' é que CONECTA A 'OUTER QUERY' COM A NESTED SUBQUERY...
        FROM (
                --esta é a NESTED SUBQUERY (a query EXTERIOR vai ser rodada SOBRE O RESULTADO DESTA QUERY)..
                SELECT booking_date,
                    SUM(amount_billed) AS daily_sum
                FROM bookings
                GROUP BY booking_date
            ) AS daily_table



)









