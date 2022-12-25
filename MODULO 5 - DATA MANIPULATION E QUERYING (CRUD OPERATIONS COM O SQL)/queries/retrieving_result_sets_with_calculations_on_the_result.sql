-- SELECT date_created,
--     customer_name,
--     product_name,
--     volume / 1000
-- FROM sales;



--OBS: ESSAS 'OPERAÇÕES' NÃO ALTERAM O VALUE ORIGINAL, ARMAZENADO NO BANCO DE DADOS...

-- SELECT date_created,
--     customer_name,
--     product_name,
--     volume * 1000
-- FROM sales;




SELECT date_created,
    customer_name,
    product_name,
    mass / 1000 AS mass_in_kg    --- PODERÍAMOS ESCREVER ASSIM, se quiséssemos DIVIDIR O VALUE, NO RESULT SET... poderíamos dar esse nome de 'mass_in_kg', pq realmente não será mais a 'mass' original, em gramas...
FROM sales;