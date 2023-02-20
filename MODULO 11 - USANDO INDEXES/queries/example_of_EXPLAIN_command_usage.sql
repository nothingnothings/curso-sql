-- EXPLAIN  --- ESSE COMANDO/KEYWORD _ PODE SER ACRESCENTADO NA FRENTE DE QUALQUER OUTRO COMANDO...
-- SELECT * FROM users
-- WHERE salary > 12000;











--> QUANDO COLOCAMOS 'EXPLAIN', FAZEMOS COM QUE O COMANDO SUBSEQUENTE NÃO SEJA EXECUTADO, E SIM QUE _ SEJA FORNECIDA UMA 'EXPLICAÇÃO' DE __ COMO _ _ESSA COISA _ SERÁ EXECUTADA, POR TRÁS DAS CENAS...



---- EX:


-- Seq Scan on users(cost=0.00..10.62 rows=17 width=1556)
-- Filter: (salary > 12000)



-- ESSA INFO NOS COMUNICA:

--A) QUAL FOI O FILTER APLICADO (salary maior do que 12 mil)


-- B) O QUE O RDBMS  VAI FAZER (vai fazer 1 sequential scan na TABLE INTEIRA)..


-- C) QUAL SERÁ O CUSTO DESSA OPERAÇÃO (é uma range... de 0 a 10.62, nesse caso)...









-- A ALTERNATIVA AO USO DE 'EXPLAIN' é 'EXPLAIN ANALYZE', que é a MESMA COISA, mas _ QUE _FAZ COM QUE A QUERY SEJA REALMENTE EXECUTADA (E aí, depois de ela ser executada, TE DÁ UMA INFO DE COMO __ FICOU/FOI PERFORMADA ESSA OPERAÇÃO)...

EXPLAIN ANALYZE
SELECT * FROM users
WHERE salary > 12000;


-- [
--   {
--     "QUERY PLAN": "Seq Scan on users 
--      (cost=0.00..10.63 rows=17 width=1556) (actual time=0.009..0.010 rows=6 loops=1)"
--   },
--   {
--     "QUERY PLAN": "  Filter: (salary > 1000)"
--   },
--   {
--     "QUERY PLAN": "Planning Time: 1.228 ms"
--   },
--   {
--     "QUERY PLAN": "Execution Time: 0.020 ms"
--   }
-- ]