SELECT customer_name,
    product_name
FROM (  ---precisamos do WRAP com '()' na nossa subquery, e também do DEFINE DE UM ALIAS para esse result set...
        SELECT *
        FROM sales
        WHERE volume > 1000
    ) AS some_base_result_set;













-- exemplo da criação de 'views' (é basicamente uma VARIÁVEL QUE SEGURA UMA QUERY, que você pode chamar em vários lugares de seu código/queries)...





CREATE VIEW some_base_result_query_view AS SELECT * FROM sales WHERE volume > 1000; -- QUANDO CHAMAMOS 'some_base_result_query_view', estaremos ESCREVENDO ESSE CÓDIGO DEPOIS DO 'AS'...

















INSERT INTO top_sales (column1, column2)











--> MAS EM VEZ DE USARMOS 'VALUES' 


-- PARA INSERIR 



-- VALUES,









-- PODEMOS 




-- USAR O 'RESULT SET' DE OUTRA QUERY,





-- por meio da simples escrita de '




-- SELECT'

-- ,








-- TIPO ASSIM:







-- INSERT INTO top_sales (column1, column2)
-- SELECT * FROM some_sales;













-- --> ISSO É MEIO INCOMUM DE ACONTECER,


-- MAS É POSSÍVEL (usar uma SUBQUERY QUANDO ESTAMOS INSERINDO DATA)...