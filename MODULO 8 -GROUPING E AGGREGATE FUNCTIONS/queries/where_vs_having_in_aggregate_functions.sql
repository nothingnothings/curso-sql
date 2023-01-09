









SELECT booking_date, COUNT(booking_date)  ---- ////4
FROM bookings  ----- ///////1
WHERE amount_billed > 30  ----  //////2
GROUP BY booking_date;  ---- ////3




--  VOCÊ DEVE REPARAR QUE:






--  1) ESSE FILTER __ NÃO ___ CONTÉM UMA AGGREGATE FUNCTION.... É APENAS UMA NORMAL FILTER CONDITION, BASEADA NAS 'INDIVIDUAL ENTRIES' QUE TEMOS NA COLUMN DE 'AMOUNT_BILLED'...















--  OK... O QUE ISSO QUER DIZER,



--  DE UMA PERSPECTIVA SQL,

--  É QUE 

--  TEMOS 


--  '1  FILTER __ BASEADO __ EM SINGLE BOOKINS/ON A SINGLE BOOKIng',

  

--   QUE 


--   É 

--   __ LIDO _ E AVALIADO/CONSIDERADO ________ ANTES__ __ 









--   DO 'GROUP BY'


--   SER APLICADO...





--   (


--     OU SEJA,


--     ESSE FILTRO DE 'WHERE' 

--     É APLICADO 

--     ANTES DE QUALQUERR 


--     AGGREGATION SER EXECUTADA...
--   )










--   --> ISSO QUER DIZER QUE 





--   O __ SQL __ 
--   APLICA _ ESSE FILTER NA NOSSA TABLE...











--   ISSO QUER DIZER QUE __ APENAS __ AS COLUMNS DE 'booking_date'




--   COM _ _VALUE DE 'amount_billed'



--   SUPERIOR __ A '30'


--   VÃO APARECER NO RESULT SET...