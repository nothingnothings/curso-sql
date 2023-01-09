-- SELECT ROUND(AVG(amount_tipped), 2)  --- uso de FILTER COM AGGREGATE FUNCTIONS (funciona)
-- FROM bookings AS b
-- WHERE b.amount_billed > 20
--     AND num_guests > 2;


--- USO DE 'JOINS' com aggregate functions (funciona)
-- SELECT MAX(b.num_guests), MAX(t.num_seats) FROM bookings AS b
-- INNER JOIN tables AS t ON b.table_id = t.id;




--- minha versão 


-- SELECT MAX(b.num_guests), MAX(t.num_seats) 
-- FROM bookings AS b
-- INNER JOIN tables AS t ON b.table_id = t.id
-- WHERE t.num_seats < 5 AND b.payment_id = 1;








-- versão do professor 




SELECT MAX(b.num_guests), MAX(t.num_seats) 
FROM bookings AS b
INNER JOIN tables AS t ON b.table_id = t.id
INNER JOIN payment_methods AS p ON b.payment_id = p.id
WHERE t.num_seats < 5 AND p.name = 'Cash';


