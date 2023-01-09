-- SELECT SUM(amount_billed)  -- nos dá a soma de TODOS OS VALUES DESSA COLUMN, extraída dos records...
-- FROM bookings;




SELECT AVG(num_guests) FROM bookings; ---- retorna '3.8000000' 





SELECT ROUND(AVG(num_guests)) FROM bookings; ----retorna '4' 

SELECT ROUND(AVG(num_guests), 1) FROM bookings; ----retorna '3.8' 


SELECT ROUND(AVG(num_guests), 2) FROM bookings; ----retorna '3.80' 
