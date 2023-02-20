



-- PODEMOS CRIAR UM INDEX:   1) NO MOMENTO EM QUE 1 TABLE É CRIADA;  2) DEPOIS QUE 1 TABLE FOI CRIADA...








-- aqui vamos CRIAR 1 INDEX DEPOIS DE NOSSA TABLE JÁ ESTAR CRIADA...









-- -- ESCREVA 'CREATE INDEX' e então o NOME QUE VOCÊ QUER DAR PARA ESSE INDEX... ('salary_index', ou 'salaryidx', nesse nosso caso)...

-- CREATE INDEX salary_index










-- PARA CRIAR 1 INDEX, PRECISAMOS DA KEYWORD DE 'ON'...

-- ENTRETANTO, O 'ON' aqui FARÁ ALGO COMPLETAMENTE DIFERENTE DO 'ON' no contexto dos JOIN...


--> AQUI, NÃO VAMOS O UTILIZAR 

-- PARA _ DIZER A ALGUM JOIN STATEMENT ''QUAIS COLUMNS DEVERÃO TER EQUAL VALUES'',



-- E SIM 




-- VAMOS EMPREGÁ-LO 


-- PARA 

-- DIZER 

-- '''EM QUE COLUMN, EM QUE TABLE ,

-- ESSE INDEX DEVERÁ SER CRIADO''...





-- especificamos o NOME DA TABLE em que deverá ser posicionado o INDEX, e depois a COLUMN dentro da table....

-- se queremos 1 MULTI-COLUMN INDEX (composite index), ESCREVEMOS MÚLTIPLAS COLUMNS DENTRO DO '()'...
CREATE INDEX salaryidx ON users (salary);




-- 'DROP INDEX index_name;'