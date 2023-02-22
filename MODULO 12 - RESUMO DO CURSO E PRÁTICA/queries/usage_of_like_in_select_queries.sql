SELECT *
FROM USERS
WHERE first_name LIKE 'Ma%';
-- VAI ENCONTRAR USERS QUE TENHAM 'Ma' no início do value dessa column....
-- AQUI, no VALUE DO LIKE,  PRECISAMOS DE UMA 'REGULAR EXPRESSION'...->PARA DIZER 'QUEREMOS QUE ESSE NEGÓCIO COMECE COM Ma'...--> PARA ISSO,
-- ESCREVEMOS 'Ma%' --> o símbolo '%',
-- NO CONTEXTO DAS REGULAR EXPRESSIONS,
-- QUER DIZER 'QUALQUER CARACTER 
-- SUBSEQUENTE'...


-- PODERÍAMOS / PODEMOS USAR 'Ma_',
-- QUE FARÁ COM QUE APENAS 'Max' SEJA ENCONTRADO (
--     pq o 'underscore' SIGNIFICA '''NÚMERO DE CARACTERES QUAISQUER DEPOIS DAQUELE VALUE ALI'''.
-- ) ISSO SIGNIFICA QUE SE EU ESCREVESSE 'A_t_ur' E ENTÃO EU TIVESSE 1 NAME DE 'Arthur' NO BANCO DE DADOS,
-- O ROW COM ESSE VALUE SERIA RETORNADO,
-- PQ O 'Arthur' ENCAIXA NESSE 'A_t_ur'