--  'LIKE' É USADO PARA _ PROCURAR POR PALAVRAS __ SIMILARES__ A string que você colocou (não é algo exato, como o visto com  WHERE)...
-- E O LIKE _ RETORNA 'TRUE' E 'FALSE' VALUES (tenta matchear o pattern com cada value nessa column)...
-- SELECT first_name LIKE 'Max', first_name
-- FROM memberships;

--  não vai encontrar 'Max' e 'Manu', pq A CORRESPONDÊNCIA (sem % ou _) TEM QUE SER TOTAL... (não pode ser apenas 'vagamente parecido', tem que ser EXATAMENTE 'Ma')...
SELECT first_name LIKE 'Ma', first_name
FROM memberships;




---OBS :::: O 'LIKE' É CASE-SENSITIVE...




-- PARA USAR O PATTERN MATCHING COM O 'LIKE', DEVEMOS USAR '%' ('Ma%') e '_' (underscore, 'Ma_')...



--  COM '%', ADMITIMOS QUE 'APENAS ENCONTRAR ESSE PATTERN JÁ BASTA', que o número de caracteres depois disso não importa, que SE ESSE NEGÓCIO ESTIVER PRESENTE NO VALUE, VAMOS QUERER 'TRUE'...
SELECT first_name LIKE 'Ma%', first_name
FROM memberships;



-- com esse exemplo, dizemos 'ESSE FIRST_NAME APENAS PRECISA TER A', nada mais além disso importa... --> e isso vai retornar true para o 'Max' e o 'Manu', pq contém 'A'...
-- SELECT first_name LIKE '%a%', first_name
-- FROM memberships;









 SELECT first_name LIKE '_o%', first_name
 FROM memberships;

--> NESSA ESCRITA,

-- DIZEMOS:
-- 'ESSE "o" 

-- DEVE __ APARECER NO SEGUNDO LOCAL/slot', E DEPOIS DISSO, nada interessa ...




-- SELECT first_name 
-- FROM memberships
-- WHERE first_name LIKE 'J____';  ---- ISSO FUNCIONA; PODEMOS USAR 'LIKE' COM 'WHERE' (like vai retornar 'true'/'false')














--> SE VOCÊ QUER QUE SUA QUERY __ COM 'LIKE' NÃO SEJA __ CASE-SENSITIVE, DEVE-SE USAR 'ILIKE' EM VEZ DE 'LIKE'...


-- ex:


-- ISSO VAI RETORNAR 'Max' e 'Manu', pq eles satisfazem isso, desconsiderando o fato de que são 'Max' e 'Manu', e não 'max' e 'manu'...
 SELECT first_name ILIKE 'ma%', first_name
 FROM memberships;









 



 ------> ENTRETANTO, NO MYSQL ISSO NÃO FUNCIONA, O 'ILIKE',

--  GANHAMOS 1 ERROR....

--  -----> PQ ISSO?





--  É PQ O 'LIKE'



--  NO MYSQL NÃO É CASE-SENSITIVE..








--  ALÉM DISSO,



--  NO 'MYSQL'


--  RECEBEMOS '0' E '1' 
--  PARA 



--  CADA RESULT RETORNADO,
--  E NÃO 

--  'TRUE/FALSE' (apesar da ideia geral ser a mesma)....