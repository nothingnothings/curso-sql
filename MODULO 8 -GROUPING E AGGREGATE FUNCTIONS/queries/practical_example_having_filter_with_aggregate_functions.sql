-- SELECT booking_date,
--     COUNT(booking_date)
-- FROM bookings
------ WHERE SUM(amount_billed) > 30   --- ISSO NOS DARÁ UM ERROR (não podemos RODAR AGGREGATE FUNCTIONS JUNTO DO 'WHERE'.. apenas podemos fazer isso com 'HAVING')...
-- WHERE amount_billed > 30
-- GROUP BY booking_date;


SELECT booking_date,
    COUNT(booking_date)
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) > 30;  ---- VAI FILTRAR POR 'GROUP', E NÃO 'INDIVIDUALMENTE, POR CADA VALUE DE 'amount_billed' em cada record...