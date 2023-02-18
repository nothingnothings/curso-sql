



-- SELECT CONCAT(first_name, last_name) 
-- FROM memberships;  -- 'CONCAT' junta 2 values de strings em apenas 1 value, que é outputtado



-- OS VALUES FICAM 'MaxSchwarz', 'ManuLorenz' --> para DIVIDIR ESSAS STRINGS COM 1 ESPAÇO, coloque um ', ,'  ENTRE OS 2 COLUMNS...






-- SINTAXE MYSQL
SELECT CONCAT(first_name, ' ', last_name) -- vai juntar os values das 2 columns e COLOCAR 1 ESPAÇO ENTRE OS 2 'NAMES'..
FROM memberships; 



-- SINTAXE POSTGRESQL  (mesma coisa que o código de cima)

SELECT first_name || ' ' || last_name 
FROM memberships;







--  COM ISSO, PODEMOS OBTER O PREÇO, como _ STRING (formato string); TUDO POR MEIO DA CONCATENAÇÃO DE 1 STRING (o '$ ') e 1 NUMBER... O RESULTADO, É CLARO, SÃO STRINGS como ' $ 19.99'..
SELECT CONCAT ('$ ', price) FROM memberships;