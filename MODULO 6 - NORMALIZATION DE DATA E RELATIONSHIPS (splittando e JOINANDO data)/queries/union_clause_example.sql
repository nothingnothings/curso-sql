SELECT * FROM users WHERE id < 3   
UNION   ---- A CLAUSE DE 'UNION' É USADA PARA __ MERGEAR (fazer append) 1 RESULT SET COM OUTRO (podem até mesmo ser da mesma table; apenas devem ser result sets DIFERENTES, ADVINDOS DE 2 'SELECT X FROM' DISTINTOS)..
SELECT * FROM users  WHERE id > 5;



-- O UNION VAI _ RETORNAR UM RESULT SET FINAL, QUE SERÁ A COMBINAÇÃO DOS RESULT SETS QUE FORAM COMBINADOS...









SELECT first_name, email FROM users as u
UNION
SELECT id, street_name, something FROM addresses;  -- isso não dará certo, pq os 2 'union tables' deverão ter o MESMO NÚMERO DE COLUMNS..






SELECT * FROM users as u
UNION
SELECT * FROM addresses;  -- ESSA VERSÃO DA QUERY TAMBÉM NÃO dará certo, pq os 2 'union tables' deverão ter o MESMO NÚMERO DE COLUMNS.. (E eles não tem, quando selecionamos com '*', nesse caso aí)

 --- SE VOCÊ TIVER UM NÚMERO DISTINTO DE FIELDS ENTRE AS 2 TABLES QUE SERÃO UNIONZADAS,  ESSE 'UNION ' NÃO VAI FUNCIONAR)....]





 SELECT id, email FROM users as u
UNION
SELECT id, street_name FROM addresses;  -- isso FUNCIONARÁ, pq os 2 'union tables' TERÃO MESMO NÚMERO DE COLUMNS... MAS O RESULT SET DESSA QUERY NÃO SERÁ TÃO ÚTIL, pq a 'address_data' vai ficar no lugar do 'first_name' column (vamos encontrar o nome das street no meio do field de 'name' dos users)...



--- a data de 'street_name' vai acabar aparecendo na column de 'email' --> por isso é rara a utilização de 'UNION' para fazer append de data de 2 tables com DIFERENTES ESTRUTURAS (mas mesmo número de columns)...




