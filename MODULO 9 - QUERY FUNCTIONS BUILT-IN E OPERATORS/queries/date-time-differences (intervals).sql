SELECT last_checkout - last_checkin
FROM memberships;




-- ESSA QUERY RETORNA ISTO, que é chamado de 'INTERVAL' (é um data type):


--- RETORNA ISTO NO POSTGRESQL...
-- {
--   "?column?": {
--     "hours": 1,
--     "minutes": 3,
--     "seconds": 9
--   }
-- }





-- JÁ NO MYSQ, ELE RETORNA ISTO:


-- last_checkout - last_checkin:
--- 

-- 10309
-- 42844
-- 17528
-- 6411
-- 583


-- E É UM OUTPUT BEM INÚTIL... --> PARA CONSEGUIR O INTERVAL, NO MYSQL, devemos usar outra sintaxe..




-- para cONSEGUIR O INTERVAL NO MYSQL, temos estas functions (1 para timestamp; OUTRA PARA O DATE...):





SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout) FROM memberships; --> ISSO RETORNA INTEGERS (representando os minutes), MAS NÃO 1 INTERVAL (interval é só no POSTGRESQL...)...




-- 1o param ---> COMO  A DIFERENÇA ENTRE OS 2 PONTOS NO TEMPO DEVEM SER __ MEDIDAS...
-- (HOUR, TIME, DAY OU MINUTE)...
-- 2o param --> DEVEMOS TER A 'STARTING DATE' (no caso, 'last_checkin')... 
-- 3o param -> devemos ter a 'END DATE' -> no caso, usaremos 'last_checkout'...





SELECT DATEDIFF(last_checkin, last_checkout) FROM memberships; --> ISSO RETORNA INTEGERS (representando os dias), MAS NÃO 1 INTERVAL... 










-- NOS DÁ A MEMBERSHIP DURATION, EM DIAS... (no POSTGRESQL)...
SELECT membership_end - membership_start 
FROM memberships; 




-- NOS DÁ A MEMBERSHIP DURATION, EM DIAS (no MYSQL)...
SELECT DATEDIFF(membership_end - membership_start) FROM memberships;










-- COM ISSO, PEGAMOS TODOS OS DIAS DESDE A CRIAÇÃO DESSE MEMBRO ATÉ O MOMENTO DE AGORA (representado por 'now')...
SELECT DATEDIFF(NOW(), membership_start) FROM memberships;




-- 'NOW()' TAMBÉM FUNCIONA __ COM ___ O POSTGRESQL... 
SELECT NOW() - membership_start 
FROM memberships;