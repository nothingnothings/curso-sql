

--  SE TEMOS CERTEZA DE QUE ESSA 'QUERY COMPOSTA' (2 conditions no WHERE) vai ser executada com mt frequência, torna-se proveitosa a ideia de criar 1 MULTI-COLUMN INDEX, justamente para __ AJUDAR__ COM ESSA QUERY ESPECÍFICO...
SELECT *
FROM addresses
WHERE "street" = 'Teststreet'
    AND "City" = 'Munich';





--     SE RODAMOS NOSSA QUERY COM 'OR',


-- NÃO ATIVAMOS O INDEX COMPOSTO...










-- --> PRECISAMOS DA KEYWORD DE 'AND' E A COMBINAÇÃO DOS VALUES NA QUERY,

-- PARA __ ATIVARMOS O INDEX COMPOSTO...