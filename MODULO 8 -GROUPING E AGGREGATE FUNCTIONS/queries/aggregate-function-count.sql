-- SELECT * FROM bookings
-- COUNT(id); ------- FORMA ERRADA...













--- FORMA CORRETA:

-- rodamos o CÁLCULO DA FUNCTION __ NA TABLE INTEIRA:

SELECT COUNT(*) FROM bookings;


--- OUTRA FORMA CORRETA:

-- rodamos o CÁLCULO DA FUNCTION __ EM 1 COLUMN DA TABLE (vai CONSIDERAR/CALCULAR todos os records em que essa column NÃO ESTIVER COMO 'NULL')


 SELECT COUNT(id) FROM bookings;






----- rodamos o CÁLCULO DA FUNCTION __ EM 1 COLUMN DA TABLE (vai CONSIDERAR/CALCULAR todos os records em que essa column NÃO ESTIVER COMO 'NULL')


SELECT COUNT(amount_tipped) FROM bookings; --RETORNA '17', pq nem todas as pessoas DERAM TIP...













SELECT COUNT (DISTINCT booking_date) FROM bookings;





-- NÓS TAMBÉM ^^^^^^^^^^

-- TALVEZ 






-- DESEJEMOS 


-- 'DESCOBRIR QUANTOS CALENDAR DAYS

-- ACTUALLY TEMOS _ NA NOSSA TABLE DE BOOKINGS' --> PQ SABEMOS QUE 


-- TEMOS 

-- 20 

-- BOOKINGS,



-- MAS __ __ 






-- __ 'EM QUANTOS DIAS ESSES BOOKINGS TOOK PLACE'?














-- --> PARA ISSO,



-- TAMBÉM PODEMOS USAR A FUNCTION DE 'COUNT/AGGREGATE' ->









-- O PROFESSOR 









-- COLOCA A QUERY MAIS UMA VEZ,



-- MAS AGORA 


-- ASSIM:








-- VAMOS MUDAR O ARGUMENTO,
-- VAMOS COLOCAR UMA COMPARAÇÃO, 


-- PROVAVELMENTE...













-- SELECT COUNT(booking_date) FROM bookings;













-- OK... NA FRENTE DA 'ACTUAL COLUMN REFERENCE',


-- O PROFESSOR ADICIONA 


-- A KEYWORD DE 'DISTINCT' --> ISSO FORÇA 


-- O 


-- COUNT __  A 'CONSIDERAR APENAS UNIQUE VALUES' 




-- __ NA OPERAÇÃO DE 'COUNT' --> 







-- ISSO SIGNIFICA QUE 


-- SE TEMOS '2 BOOKINGS ON THE SAME DAte',



-- ISSO 

-- SERÁ CONTADO 



-- APENAS 1 VEZ (1 INDIVIDUAL DAY)... -----> 