-- SELECT c.name,
--     COUNT()
-- FROM cities
--     LEFT JOIN locations as l ON l.city_id = c.id
-- WHERE loc.city_id = 1 -- O WHERE É SEMPRE EXECUTADO _ ANTES__ DAS COISAS/RESULT SET USADO/CONSIDERADO NA AGGREGATION...
-- GROUP BY c.name;






SELECT c.name,
    COUNT()
FROM cities
    LEFT JOIN locations as l ON l.city_id = c.id 
GROUP BY c.name
HAVING COUNT (loc.id) > 1; -- isso é válido (pq não é 'WHERE')...




-- EX:






-- MAS SE A AGGREGATION EM SI É __ PARTE__ DA CONDITION QUE 

-- VC QUER 

-- TER,



-- VOCE PRECISA 




-- DA CLAUSE DE 'HAVING'... -----> VC PODE USAR SUA AGGREGATE FUNCTION DE 'COUNT()'

-- COM O 'HAVING', AO CONTRÁRIO DAQUILO VISTO COM 'WHERE'... 

--  PQ O HAVING É EXECUTADO  _ DEPOIS _ DA AGGREGATION ACONTECER....