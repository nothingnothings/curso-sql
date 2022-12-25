--  INSERT INTO nome_da_table (column1, column2, column3) VALUES ("OI", 2, "/SAASASAS/dasdsasad")  --versão comum
--  INSERT INTO nome_da_table (column1, column2, column3)  ---versão em MASSA
-- VALUES 
--     ("OI", 2, "/SAASASAS/dasds2121asad") 
--     ("OI2", 23, "/SAASASAS/dasd31sasad") 
--     ("OI3", 3212132, "/SAASASAS/da2sdsasad") 
--     ("OI4", 2451241, "/SAASAdassadzcCCSAS/dasdsa1231sad") 
--     ("OI5", 1221122, "/SAASASAS/dasdsa5sassad") 


INSERT INTO sales (
    date_fulfilled,
        customer_name,
        product_name,
        volume,
        is_recurring,
        is_disputed
    )
VALUES (NULL, 'Paul', 'Chair', 2000, true, true),
(NULL, 'Chris', 'Table', 4000, true, true),
(NULL, 'Ana', 'Tools', 2000, true, true),
(NULL, 'John', 'Ladder', 2000, true, true);