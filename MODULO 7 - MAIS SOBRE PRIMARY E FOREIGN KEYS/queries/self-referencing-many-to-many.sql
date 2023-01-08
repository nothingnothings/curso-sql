CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
);
CREATE TABLE users_friends(
    ---nossa INTERMEDIATE TABLE... AMBOS OS FIELDS QUE FAZEM 'REFERENCES' VÃO __ FAZER REFERÊNCIA À MESMA TABLE, A TABLE DE 'users'...

    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users ON DELETE CASCADE, -- se esse user/friend (1 dos polos da relação) for apagado, VAMOS QUERER DELETAR ESSE RECORD DA 'FRIENDSHIP' ENTRE OS 2...
    friend_id INT REFERENCES users ON DELETE CASCADE,
    -- PRIMARY KEY (user_id, friend_id) -- nossa primary key poderia ser essa 'composite key', se quiséssemos (serial a 'REAL KEY' dessa table, ao contrário da 'surrogate key' de 'id', que é ARTIFICIAL)...
    CHECK(user_id < friend_id)  ---- exemplo de TABLE-WIDE CONSTRAINT... ESSA É UMA CONSTRAINT PARA __ EVITAR_ QUE 'EXISTAM 2 RECORDS PARA 1 MESMA FRIENDSHIP/CONNECTION entre users' 
); 



















-- mas temos 

-- 1 ''PITFALL'


-- EM POTENCIAL,


-- AQUI...








-- É CLARO QUE QUANDO









-- 1 USER DE ID '''1''''




-- É __ AMIGO __ 


-- DO USER COM ID DE '''''2''''',



-- HÁ 




-- 2 

-- FORMAS DE INSERIR ESSA RELATION...






-- --> 2 formas?








-- 1a FORMA)        PODERÍAMOS 



-- INSERIR 


-- O 

-- id de '1' 



-- COMO O VALUE PARA O 'user_id',



-- e aí 



-- o 

-- id do outro usuário,



-- '2',


-- como 


-- VALUE 

-- DO 




-- 'friend_id'...














-- --> SIM.... MAS COMO AMBOS APONTAM À MESMA TABLE,



-- 'THE OTHER WAY AROUND'
-- TAMBÉM É POSSÍVEL (


--     colocar 

--     '2' como o USER_ID,


--     e aí 

--     '1' COMO O FRIEND_id...
-- )













-- ---> E EMBORA NENHUMA DAS 2 APPROACHES
 

  


-- SEJA EXATAMENTE ERRADA,



-- NÓS __ DEFINITIVAMENTE QUEREMOS 
-- TER 1 POUCO DE CONSISTÊNCIA,



-- QEUREMOS 

-- ASSEGURAR  QUE 




-- 'NÓS __ NÃO ACIDENTALMENTE __ ADICIONEMOS 

-- A MESMA RELATION 2x NESSA TABLE INTERMEDIÁRIA,



-- A MESMA RELATION MAS COM __ OS IDS DOS USERS EM DIFERENTES COLUMNS' (duplicação de dados)...
















-- --> É POR ISSO QUE 



-- SE TIVERMOS 





-- 1 'AMIZADE'

-- QUE É TIPO ASSIM:



-- ''''''''
-- user_id: 1 
-- friend_id: 2,
-- ''''''''








-- NÓS NÃO VAMOS QUERER 


-- TER UMA OUTRA AMIZADE ASSIM:




-- ''''''''
-- user_id: 2
-- friend_id: 1,
-- ''''''''











-- --> NÃO VAMOS QUERER 


-- TER 2 ROWS PARA ESSA MESMA FRIENDSHIP/CONEXÃO 

-- ENTRE 


-- ESSES 'USER',



-- PQ _ AÍ TEREMOS 


-- '''2 ROWS  EXPRESSANDO A MESMA RELATION/CONNECTION'''...












-- --> E PARA ASSEGURAR QUE 

-- ISSO NUNCA ACONTEÇA,

-- DEVEMOS __ ADICIONAR __ 1 CONSTRAINT EXTRA,



-- 1 CONSTRAINT EXTRA à TABLE INTEIRA..











-- O CONSTRAINT QUE ADICIONAREMOS SERÁ O DE 'CHECK'...













-- CHECK() 












-- --> COM ISSO, COM 
-- O CHECK,

-- PODEMOS COLOCAR UMA CONDITION 


-- DE 



-- '(user_id < friend_id)' -----> 









-- com isso,


-- FORÇAREMOS 1 CONDIÇÃO 


-- DE 


-- '''O SMALLER ID SEMPRE VAI __ NO USER ID,



-- E O __ BIGGER ID SEMPRE VAI NO FRIEND ID'''' --> COM ISSO,


-- GARANTIREMOS 

-- QUE NUNCA VAMOS NOS DEPARAR 

-- COM O PROBLEMA DE 


-- 'TER A MESMA RELATIONSHIP 

-- EM 2 DIFERENTES ROWS, NESSA TABLE DE USERS'...







-- FICA TIPO ASSIM:









-- CREATE TABLE users (
--     id SERIAL PRIMARY KEY,
--     first_name VARCHAR(300) NOT NULL,
--     last_name VARCHAR(300) NOT NULL,
-- );
-- CREATE TABLE users_friends(
--     id SERIAL PRIMARY KEY,
--     user_id INT REFERENCES users ON DELETE CASCADE, -- se esse user/friend (1 dos polos da relação) for apagado, VAMOS QUERER DELETAR ESSE RECORD DA 'FRIENDSHIP' ENTRE OS 2...
--     friend_id INT REFERENCES users ON DELETE CASCADE, 
--     CHECK (user_id < friend_id)  ----- EIS O CÓDIGO EM QUESTÃO.
-- ); 




