-- SELECT *   --- no nosso exemplo, é a mesma coisa que o INNER JOIN DE 'USERS' COM ADDRESSES...
-- FROM users AS u
-- LEFT JOIN addresses AS a ON a.id = u.address_id;











--- A ORDEM, em 'LEFT JOIN' STATEMENTS, É EXTREMAMENTE IMPORTANTE, E MUDA TUDo... (aqui invertemos 'address' com 'users')...



--- ISTO RETORNA TODOS OS ROWS DE 'addresses', independentemente da existência de 'matching user data' ou não...






SELECT *   --- no nosso exemplo, é a mesma coisa que o INNER JOIN DE 'USERS' COM ADDRESSES...
FROM addresses AS a
LEFT JOIN users AS u ON a.id = u.address_id;


---- estrutura de um ROW RETRIEVADO COM 'left join' (row sem matching user data/address_id equivalente a 'id' desse address):

-- {
--   "id": 10,
--   "street": "That Street",
--   "house_number": 21,
--   "city_id": 1,
--   "id (1)": null,
--   "first_name": null,
--   "last_name": null,
--   "email": null,
--   "address_id": null
-- }


-- SELECT *   --- no nosso exemplo, é a mesma coisa que o INNER JOIN DE 'USERS' COM ADDRESSES...
-- FROM addresses AS a
-- INNER JOIN users AS u ON a.id = u.address_id;


