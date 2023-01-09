-- SELECT name, SUM(b.num_guests) AS guests
-- FROM payment_methods AS p
--     LEFT JOIN bookings AS b ON p.id = b.payment_id
-- GROUP BY name; --exemplo mais simples







SELECT name, SUM(b.num_guests) AS guests, booking_date, ROUND(AVG(amount_tipped), 2) AS amount_tipped
FROM payment_methods AS p
    LEFT JOIN bookings AS b ON p.id = b.payment_id
GROUP BY name, b.booking_date; --exemplo mais complexo...











-- É POR ISSO QUE PODEMOS ADICIONAR 'MÚLTIPLOS IDENTIFIERS  (como 'p.name' e 'b.booking_date', nesse exemplo)
-- NO

-- STATEMENT DE GROUP BY',




-- MAS ISSO 


-- VAI__ , É CLARO,


-- AUMENTAR O SEU 'ROW COUNT',

-- QUANDO 

-- COMPARADO A 1 SINGLE IDENTIFIER...











-- AINDA ASSIM, SEMPRE QUE VOCÊ TIVER 1 IDENTIFIER NO SEU 'SELECT STATEMENT',




-- VOCÊ 


-- DEVE 

-- ADICIONAR 





-- __ ESSE IDENTIFIER à KEYWORD DE 'GROUP BY' também..














-- ISSO PODE SER VISTO ATÉ MESMO NO NOSSO CÓDIGO-EXEMPLO:







-- SELECT name, SUM(b.num_guests) AS guests, booking_date  --- 'name' e 'booking_date' aparecem aqui e LÁ EM BAIXo...
-- FROM payment_methods AS p
--     LEFT JOIN bookings AS b ON p.id = b.payment_id
-- GROUP BY name, b.booking_date;  --- 'name' e 'booking_date' são repetidos aqui



