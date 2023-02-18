

--  O PRIMEIRO CASE É 'LOWER()' -->  faz com que seu string value fique em LOWERCASE, antes de ele ser inserido na tabela (normaliza dados, etc etc)...

-- INSERT INTO memberships (
--         membership_start,
--         membership_end,
--         last_checkin,
--         last_checkout,
--         consumption,
--         first_name,
--         last_name,
--         price,
--         billing_frequency,
--         gender
--     )
-- VALUES (
--         '2021-10-18',
--         '2021-11-18',
--         '2021-11-01 08:56:01',
--         '2021-11-01 09:20:12',
--         NULL,
--         'John',
--         'Doe',
--         19.99,
--         12,
--         LOWER('DivErs')
--     );





--- O SEGUNDO CASE É 'UPPER', que transforma os caracteres de seu value EM __ UPPERCASE_...

-- INSERT INTO memberships (
--         membership_start,
--         membership_end,
--         last_checkin,
--         last_checkout,
--         consumption,
--         first_name,
--         last_name,
--         price,
--         billing_frequency,
--         gender
--     )
-- VALUES (
--         '2021-10-18',
--         '2021-11-18',
--         '2021-11-01 08:56:01',
--         '2021-11-01 09:20:12',
--         NULL,
--         'John',
--         'Doe',
--         19.99,
--         12,
--         UPPER('DivErs')
--     );





--  COM 'TRIM()', podemos TIRAR ESPAÇOS EM BRANCO DE DATA INSERIDA NAS NOSSAS COLUMNS..

--   INSERT INTO memberships (
--     membership_start,
--     membership_end,
--     last_checkin,
--     last_checkout,
--     consumption,
--     first_name,
--     last_name,
--     price,
--     billing_frequency,
--     gender
-- )
-- VALUES (
--     '2021-05-02',
--     NULL,
--     '2021-06-05 11:52:25',
--     '2021-06-05 11:58:08',
--     NULL,
--     'Monti',
--     'Durns',
--     199.99,
--     1,
--     TRIM(TRAILING ' ' FROM 'male  ')
-- ); 







-- 3 TIPOS DE TRIM, POSSÍVEIS (NOS 2 LADOS, ANTES OU DEPOIS)... 

-- TRIM(BOTH ' ' FROM  '   male   ' ))


-- TRIM(LEADING ' ' FROM  '   male' ))



-- TRIM(TRAILING ' ' FROM 'male    ' ))