-- SELECT *
-- FROM users
--     INNER JOIN addresses ON users.address_id = addresses.id;
-- -- primeira maneira de escrever um INNER JOIN (sem o uso de aliases)...



-- SELECT *
-- FROM users AS u
--     INNER JOIN addresses AS a ON u.address_id = a.id;
-- segunda maneira de escrever um INNER JOIN (com o uso de aliases)...




--- já esta versão nos deixa SELECIONAR COLUNAS ESPECÍFICAS ENTRE AS 2 TABLES... (e ver isso nos records)
SELECT u.id, u.first_name, u.last_name, a.street, a.house_number, a.city_id
FROM users AS u
    INNER JOIN addresses AS a ON u.address_id = a.id;
