

--  COMPORTAMENTO DEFAULT (sem transactions) --> A PRIMEIRA QUERY É EXECUTADA E ADICIONA 'MARIE' NA TABLE DE CUSTOMERS; JÁ A SEGUNDA QUERY, QUE ESTÁ IRREGULAR, NÃO É EXECUTADA (não faz nada)..
INSERT INTO customers (first_name, last_name, email)
VALUES (
        'Maria',
        'Jones',
        'maria@test.com'
    );
INSERT INTO orders (amount_billed, customer_id)
VALUES (103.12);




-- COMPORTAMENTO COM TRANSACTION --> TODAS AS QUERIES SÃO EXECUTADAS __ APENAS__ SE TODAS AS QUERIES 'DÃO CERTo' (não estão irregulares/com problemas/não caiu a conexão)...









-- PARA COMEÇAR 1 TRANSACTION (que continua/continuará ROLANDo enquanto você mantiver sua CONEXÃO/SESSÃO COM A DATABASE ABERTA...),
-- SÃO UTILIZADAS AS EXPRESSÕES:




START TRANSACTION -- EXPRESSÃO DO MYSQL 
BEGIN -- EXPRESSÃO DO POSTGRES






-- CERTO... ASSIM QUE ESSE COMANDO FOR EXECUTADO,

-- isso 





-- __ VAI __ 


-- TRANSFORMAR NOSSA 'CURRENT SESSION' (CONEXÃO COM A DATABASE) 


-- EM 1 TRANSACTION... ---------> 
