-- SELECT MAX(num_seats)
-- FROM tables;



-- SELECT MIN(num_seats)
-- FROM tables;





-- ESTA SINTAXE NÃO FUNCIONA (não podemos selecionar TODAS AS COLUMSN DE NOSSA TABLE PARA PROCURAR 1 VALUE 'MÁXIMO', PQ NÃO ESTARÍAMOS ESPECIFICANDO 'DE QUAL MAXIMUM ESTAMOS FALANDO')
-- SELECT MAX(*) FROM tables;












--> PODEMOS RODAR AGGREGATE FUNCTIONS DE FORMA COMPOSTA (para conseguir múltiplas infos/resultados):





 SELECT MAX(amount_billed) AS max_amount_billed, MAX(amount_tipped) AS max_amount_tipped FROM bookings;












---- o 'MAX()' E 'MIN()' TAMBÉM FUNCIONAM COM STRINGS (ordem padrão, alfabética)....








-- SELECT MIN(category), MAX(category) FROM tables;



-- OK, MAS ISSO É UM VARCHAR... --> COMO PODERÍAMOS 


-- APLICAR 'MIN()'

-- OU 

-- 'MAX()'


-- A UM TEXT?










-- BEM, 

-- O 

-- 'MIN',

-- EM RELAÇÃO


-- A TEXT,


-- VAI 


-- TE DAR __ O 'PRIMEIRO ITEM',



-- DE 1 ORDEM ALFABÉTICA..







-- --> JÁ 'MAX' VAI TE DAR __ O ÚLTIMO ITEM,



-- DE UMA PERSPECTIVA DE ORDEM ALFABÉTICA...












--- o 'MIN()' E 'MAX()' TAMBÉM FUNCIONAM PARA DATES... (pegam a date mais antiga, e a mais avançada)...




SELECT MIN(booking_date), max(booking_date) FROM bookings;
