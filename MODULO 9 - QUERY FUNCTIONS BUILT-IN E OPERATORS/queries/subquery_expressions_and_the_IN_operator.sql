


-- 1a MANEIRA DE CONSEGUIR 'APENAS TODOS OS CUSTOMERS QUE REALIZARAM ORDERS (excluímos o customer de 'Ken', que não fez nenhuma order)


-- SELECT first_name FROM customers as c
-- INNER JOIN orders AS o ON o.customer_id = c.id;






-- MANEIRA __'NORMAL' (Clunky) DE CONSEGUIR TODOS OS CUSTOMERS COM NOME DE 'Max' ou 'Manu'...:

SELECT id FROM customers WHERE first_name = 'Max' OR first_name = 'Manu';




-- MANEIRA __ MAIS ABREVIADA _de CONSEGUIR TODOS OS CUSTOMERS com nome de 'Max' ou 'Manu', COM O OPERATOR DE 'IN' (você passa 1 lista de values que deverão ser encontrados nessa column... é mais prático)...


SELECT id FROM customers WHERE first_name IN('Max', 'Manu');





--- COM O OPERATOR DE 'NOT' NO INÍCIO, conseguimos TODOS OS USERS QUE NÃO POSSUEM ESSE VALUE DE 'Max' ou 'Manu' (ou seja, KEN e JULIA)...
-- SELECT id FROM customers WHERE first_name NOT IN('Max', 'Manu');



--  JÁ COM ESTA QUERY, CONSEGUIMOS 'TODOS OS USERS QUE REALIZARAM ORDERS' (ou seja, o que queríamos fazer inicialmente)... --> 
SELECT email
FROM customers 
WHERE id IN(
--  ESTA É A SUBQUERY...
    SELECT customer_id FROM 
    orders
);