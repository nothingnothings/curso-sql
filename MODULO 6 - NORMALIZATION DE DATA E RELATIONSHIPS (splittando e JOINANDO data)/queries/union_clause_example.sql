SELECT * FROM users WHERE id < 3   
UNION   ---- A CLAUSE DE 'UNION' É USADA PARA __ MERGEAR (fazer append) 1 RESULT SET COM OUTRO (podem até mesmo ser da mesma table; apenas devem ser result sets DIFERENTES, ADVINDOS DE 2 'SELECT X FROM' DISTINTOS)..
SELECT * FROM users  WHERE id > 5;



-- O UNION VAI _ RETORNAR UM RESULT SET FINAL, QUE SERÁ A COMBINAÇÃO DOS RESULT SETS QUE FORAM COMBINADOS...









SELECT first_name, email FROM users as u
UNION
SELECT ID, street, something FROM addresses;  -- isso não dará certo, pq os 2 'union tables' deverão ter o MESMO NÚMERO DE SALGADINHOS..



 --- SE VOCÊ TIVER UM NÚMERO DISTINTO DE FIELDS NESSA VERSÃO DE EXEMPLO E A VERSÃO ATUAL/DA GELADEIRA,  ESSE 'UNION ' NÃO VAI CONSEUGIR)....