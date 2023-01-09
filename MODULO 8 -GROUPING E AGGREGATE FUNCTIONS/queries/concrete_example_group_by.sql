-- SELECT booking_date, SUM(num_guests) ---- ISSO VAI RESULTAR EM UM __ ERRO.... (falta de 'group by' )
-- FROM bookings;





SELECT booking_date, SUM(num_guests) -- ISSO VAI FUNCIONAR (por conta da keyword 'GROUP BY')...
FROM bookings
GROUP BY booking_date;




---- GROUP BY COMUNICA:
--    '''CRIE NOVOS GRUPOS COM _ BASE NO IDENTIFIER _ QUE _ NÃO 

--    É UM AGGREGATE FUNCTION NO __ NOSSO SELECT STATEMENT'''..
   