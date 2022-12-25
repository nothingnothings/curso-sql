-- SELECT *
-- FROM sales
-- WHERE date_fulfilled IS NOT NULL; ----- selecionar todas as sales que foram fulfilled 













 
--  SELECT *
-- FROM sales
-- WHERE date_fulfilled - date_created <= 5;  --- -SELECIONAR TODOS OS RECORDS EM QUE O INTERVALO ENTRE A DATA DE 'DATE_CREATED' E 'DATE_FULFILLED' não excede 5 dias...








--OUTRA MANEIRA DE ESCREVER, COM A BUILT-IN FUNCTION DE 'EXTRACT()', E o operator de 'DAY FROM' (que ajuda a CONVERTER ESSE TEMPO, EM 'HORAS', EM DIAS, para aí rodarmos aquela comparação com o '<='):
-- (essa maneira APENAS FUNCIONA/FUNCIONARIA COM TIMESTAMPS, mas aqui estamos trabalhando com DATES)..








SELECT * FROM sales 
WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 5;







