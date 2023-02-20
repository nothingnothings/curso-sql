



--> OK... O PARTIAL INDEX É CRIADO SOBRE '_PARTE DE NOSSA TABLE' (apenas alguns rows/parte dos rows)...
-- DIGAMOS QUE QUEREMOS CRIAR 1 PARTIAL INDEX PARA APENAS OS SALARIES MAIORES DO QUE '12000'....




CREATE INDEX  salaryidxpartial ON users (salary)  --- A DIFERENÇA DE INDEXES PARA PARTIAL INDEXES, NA SUA DEFINIÇÃO, É A KEYWORD DE 'WHERE'...
WHERE salary > 12000;










-- --> NESSE CASO,




-- ARMAZENAR 

-- TODOS 

-- OS SALARIES 
 

--  NO INDEX SERIA INEFICIENTE (


--     se há 1 porção significante dos indexes que 

--     nem mesmo 

--     entrará 

--     na query de qualquer forma...
--  ),








--  E __ AÍ __ SE TORNARIA PROVEITOSO 





--  INDEXAR APENAS OS VALUES QUE 

--  SÃO 

--  USADOS 1 MONTE (para conseguir mais performance de nosso index)... 





-- NESSA CLAUSE DE 'WHERE',


-- COLOCAMOS JUSTAMENTE 'salary > 12000',


-- PARA INFORMAR QUE 

-- ESSE INDEX DEVE SER FORMADO APENAS 

-- PELOS ROWS QUE TENHAM
 



-- O VALUE DESSA COLUMN MAIOR DO QUE 12K..