
-- --> TEMOS A TABLE DE 'orders'..








-- DENTRO DESSA TABLE,


-- TEMOS 
-- 4 DIFERENTES 
-- ORDERS...









-- OK... AGORA PODEMOS DIZER QUE 




-- 1 'ORDER'





-- COM VALUE ACIMA DE '30' 





-- É UM 'GOOD DAY' (amount_billed)...









-- --> 1 order acima de 15 ou 10 é 


-- UM NORMAL DAY...










-- TODAS AS OUTRAS ORDERS SÃO BAD...












-- --> PODEMOS 



-- CONSEGUIR ISSO COM 1 CONDITIONAL EXPRESSION,



-- PQ O OUTPUT OBTIDO POR NÓS 

-- DEPENDERÁ 




-- __ DE 1 CERTA CONDITION...








-- --> para aplicar 

-- 1 condition dessas,


-- PRIMERIAMENTE 




-- DEVEMOS 


-- ESCOLHER 1 COLUMN (no nosso caso,
-- o 'amount_billed')...









-- Ex:











-- SELECT amount_billed,













-- --> MAS NÃO VAMOS ADICIONAR O 'FROM',


-- E SIM 

-- VAMOS 

-- ADIICONAR ESSA VÍRGULA..







-- DEPOIS DA VÍRGULA,

-- VAMOS COLOCAR OS DIFERENTES 


-- 'CASES'

-- QUE 


-- GOSTARÍAMOS DE TER...






--> PARA DEFINIR CONDITIONAL EXPRESSIONS, USAMOS 'CASE'...:




--- SELECIONA-SE A COLUNA com os values a serem examinados/considerados nas expressions condicionais
SELECT amount_billed,
     CASE WHEN amount_billed > 15 AND amount_billed <= 30 THEN 'Normal Day',
     WHEN amount_billed > 30 THEN 'Good Day',
     ELSE 'Bad Day'
    END
FROM orders;













-- PODEMOS USAR CONDITIONAL EXPRESSIONS PARA __ TROCAR OS NÚMEROS REPRESENTATIVOS DE DIAS DA SEMANA POR actual strings desses dias, como 'segunda', 'terça', etc etc..


-- esse é um exemplo de SUBQUERIES COM CONDITIONAL EXPRESSIONS...


-- ex:

-- versão postgresql
SELECT EXTRACT(ISODOW FROM last_checkin) FROM memberships;