SELECT booking_date AS date,
    SUM(nr_guests) as nr_guests
FROM bookings;
GROUP BY booking_date;




-- TÍTULO: '''TRABALHANDO COM 2 AGGREGATE FUNCTIONS ___ COMO IDENTIFIERS''''...




-- --> ATÉ AGORA,

 

--  O TRABALHO COM AGGREGATE FUNCTIONS FUNCIONOU ' JUST FINE '...







--  APRENDEMOS SOBRE:




--  1) AVG() 



--  2) SUM()



--  3) MAX()


--  4) MIN()...











--  --> MAS HÁ MAIS COISAS 

--  A SEREM EXPLORADAS SOBRE ESSE TÓPICO...












--  ---> PARA COMEÇAR,



  
--   O PROFESSOR QUER MOSTRAR UM EXEMPLO TEÓRICO



--   DAQUILO QUE APRENDEMOS ATÉ AGORA....










--   EX:







--   SELECT COUNT(booking_date) AS nr_bookings, SUM (nr_guests) AS nr_guests
--   FROM bookings;












--   --> ESSA QUERY _ NÃO CONTÉM NENHUMA INFO NOVA...











--   --> A PRIMEIRA PARTE,


--   '
-- SELECT COUNT(booking_date) '  VAI CONTAR O NÚMERO DE BOOKINGS QUE TEMOS, NA NOSSA TABLE...













--   --> JÁ ' nr_guests ' VAI 



--   __ SOMAR__ O NÚMERO DE GUESTS EM CADA 1 DOS RECORDS...












--   ---> O RESULTADO 




-- DAS 2 AGGREGATE FUNCTIONS 

-- SERÁ 




-- ' nr_bookings ' e ' nr_guests '...











-- ---> 20 (bookings)      E 76 (guests)












-- DE NOVO,

-- É IMPORTANTE ENTENDER QUE 



-- __ESSAS FUNCTIONS_ SÃO ' ALL ABOUT AGGREGATES '... --> ISSO SIGNIFICA QUE 




-- TEMOS 


-- ' MÚLTIPLOS INPUT
-- VALUES ' 




-- lá na ' booking_date ',




-- e 


-- na column de ' nr_guests ',





-- e AÍ 



--  AS AGGREGATE FUNCTIONS _ 




--  REALIZAM ALGUMAS OPERAÇÕES (' count ' e ' sum ', nesse caso) 






--  COM _ BASE __ NOS MÚLTIPLOS INPUT VALUES 


--  DESSAS COLUMNS,

--  QUE 

--  SÃO 



--  CONVERTIDOS EM APENAS 1 ÚNICO VALUE,



--  1 ''' AGGREGATE '''...











--  --> PERCEBA QUE 

--  O 

--  __'
-- SELECT '__ STATEMENT,

-- NO MOMENTO,



-- ESTÁ CONTENDO APENAS ' AGGREGATE FUNCTIONS '...















-- OK.... MAS E SE ISSO AÍ MUDAR?











-- E SE TIVERMOS ' AGGREGATED ' E ' NON - AGGREGATED ' 


-- IDENTIFIERS 

-- LÁ 


-- NO STATEMENT DE '
-- SELECT '?










-- COMO EXEMPLO, PODEMOS CITAR ISTO:











-- SELECT booking_date AS date
-- FROM bookings;













-- --> NESSE SELECT STATEMENT,




-- TEMOS ' booking_date ',


-- 1 ' NORMAL,
--     NON - AGGREGATED IDENTIFIER ' (



--     OU SEJA,

--     NENHUMA AGGREGATE FUNCTION FOI USADA, NESSE TRECHO...
-- ) ----->







-- E, ENTÃO,

-- PODEMOS USAR 

-- ESSE STATEMNET 



-- PARA __ CONSEGUIR UM ' OVERVIEW '


-- DE TODOS NOSSOS bookings 
 


--  E
  


--   AS DATES CORRESPONDENTES A CADA UM DESSES BOOKINGS...



















-- AQUI, NO CASO,

-- PODERÍAMOS 


-- COLOCAR 


-- 1 AGGREGATE FUNCTION COMO SEGUNDA PARTE DO SELECT STATEMENT,

-- TIPO ASSIM:








-- SELECT booking_date AS date, SUM(nr_guests) as nr_guests
-- FROM bookings;


















-- -----> OK.. COM ISSO,

-- PODERÍAMOS RETRIEVAR O ' NÚMERO DE GUESTS '

-- POR MEIO DESSA SEGUNDA PARTE DA QUERY...














-- OK, MAS ISSO NOS TRAZ UM PROBLEMA:




-- AQUI VAMOS ACABAR ''' RETORNANDO 2 RESULTS SETS,
--     1 ___ '''MÚLTIPLO'''' E 1 ÚNICO/AGGREGATE'...--> E, SE TENTAMOS RODAR ISSO COM O POSTGRESQL,
--     RECEBEMOS ISTO: column "bookings.booking_date" must appear in the
-- GROUP BY clause
--     or be used in an aggregate function -----> ISSO SIGNIFICA QUE 
--     NOSSO 'SELECT STATEMENT' ESTÁ __ COM 2 'MAIN PROBLEMS'...1o PROBLEM
-- ) --> PODE SER VISTO NA COLUMN DE 'DATE', ou seja,
-- NO RESULTADO DA PRIMEIRA PARTE DO
-- SELECT STATEMENT...(na column de 'booking_date')...--> ISSO PQ O RESULTADO DESSA QUERY SERÁ UMA 'LISTA DE TODOS OS DIFERENTES BOOKINGS',
--     e os 'CORRESPONDING BOOKING DATES'..(
--         incluindo DUPLICATAS...---> com coisas como 
--         '''' 2021 -11 -04,
--         2021 -11 -04 2021 -11 -05 ''''''''
--     ) (
--         isso quer dizer que não ganhamos uma lista de 'ALL BOOKING DATES',
--         e sim ganhamos uma lista de 'ALL  THE BOOKINGS, AND WHEN THEY TOOK PLACE'...
--     )->PARA SOLUCIONAR ISSO,
--     PRECISAREMOS DA KEYWORD DE 'DISTINCT',
--     QUE VAI __ DEIXAR APENAS RESULTADOS DISTINTOS DE 'DATE' APARECER NO RESULT
-- SET...2o PROBLEMA
-- ) --> será O FATO DE QUE,
-- PARA A AGGREGATE FUNCTION,
-- NÃO 'DEIXAMOS CLARO __ A COISA__ EM QUE _DEVERÁ _ SE BASEAR ESSA AGGREGATE FUNCTION'..--> ISSO PQ __ aGGREGATE FUNCTIONS __ SEMPRE __ FAZEM 'REDUCE'
-- DE MÚLTIPLOS INPUT
-- VALUES,
--     FAZEM ISSO __ E CRIAM 1 SINGLE RESULT....------> ENTRETANTO, AQUI O PROBLEMA É QUE TEMOS 'MÚLTIPLOS VALUES _ PARA __ A COLUMN DE __ DATE'',
--     não '1 único result'...--> MAS O PROBLEMA AQUI É ''QUAL SINGLE RESULT QUEREMOS, AQUI?'''
--     --> A 'BASE' PARA ESSA CALCULATION NÃO FOI CLARAMENTE DEFINIDA,
--     E É POR ISSO QUE ISSO RESULTA EM UM __ ERRO...--> 
--     CONSEGUIRÍAMOS RESOLVER ESSE PROBLEMA SE TIVÉSSEMOS 'GROUPS DE DATES',
--     por exemplo....----> 
--     COM ISSO,
--     CRIARÍAMOS '''1 GROUP PARA __ CADA INDIVIDUAL CALENDAR DAY'''...--> isso quer dizer que 
--     basicamente teríamos UMA LISTA_ SEM ___ 'DUPLICATES' NA COLUMN DE 'DATE'...--> BEM,
--     E EM CADA 'INDIVIDUAL DATE',
--     GOSTARÍAMOS DE TER A 'SUM' DO NÚMERO __ DE GUESTS __ QUE TIVEMOS..--> COM ISSO,
--     A AGGREGATION FICARIA BEM CLARA...--> REDUZIRÍAMOS O 'NUMBER OF GUESTS' (reduce)
--     PARA EACH INDIVIDUAL DAY,
--     1 value único para CADA 'DIA' (
--         a soma do número guests,
--         para cada INDIVIDUAL DAY...
--     )..----> O PROFESSOR ANTERIORMENTE USOU A PALAVRA DE 'GROUPING',
--     E ESSA É EXATAMENTE A SOLUÇÃO: TEMOS QUE ADICIONAR A KEYWORD DE 'GROUP BY' AO FINAL DE NOSSA QUERY,
--     TIPO ASSIM:
-- SELECT booking_date AS date,
--     SUM(nr_guests) as nr_guests
-- FROM bookings;
-- GROUP BY booking_date;
-- ----> ESSA KEYWORD VAI DIZER AO SQL
-- '''EM QUE COLUMN ___ VALUES__ DUPLICADOS__ 


-- DEVERÃO__ SER GRUPADOS ___ PARA _ 1 SINGLE _ VALUE'''..--> A SINTAXE DE 'GROUPING'
-- DEPENDE DO STATEMENT DE 'GROUP BY'...--> DEPOIS DISSO,
-- COLOCAMOS O NOME DA __COLUMN__ EM QUE _ O GROUPING DEVERÁ ACONTECER...->--> com isso,
-- O RESULTADO __DE NOSSA QUERY FICARÁ ASSIM: date nr_guests 2021 -11 -04 30 2021 -11 -05 20 2021 -11 -06 26 OU SEJA,
-- NÃO TEREMOS MAIS DUPLICATE
-- VALUES NO 'datE'...--> ALÉM DISSO,
--     AGORA A AGGREGATION DE 'nr_guests' REALMENTE ESTÁ FUNCIONANDO...--> ISSO ACONTECE PQ __ O 'GROUP BY'
--     _ ACONTECE __ ANTES__ DA AGGREGATION _ ACONTECER (antes de 'SUM()', no caso)...COM ESSA LÓGICA,
--     A AGGREGATION FUNCTION _ SABE_ QUE 'QUEREMOS CALCULAR 




-- A__ SUM __ DE NUMBER OF GUESTS __ PARA __ CADA INDIVIDUAL CALENDAR DAY'''...----> E É ASSIM QUE PODEMOS COMBINAR 'non-aggregated identifiers' (como 'SELECT booking_date AS date')
--     COM AGGREGATE FUNCTIONS / IDENTIFIERS ('nr_guests') EM 1 ÚNICO
-- SELECT STATEMENT...--> RESUMINDO:
--     '''' DEVEMOS GARANTIR QUE __ A __ BASE __ PARA A AGGREGATION FIQUE CLARA,
--     E __ PODEMOS __ CRIAR _ O '' ESPAÇO '''


--   COM A KEYWORD DE '
-- GROUP BY '''...















--   --> ISSO TUDO FOI TEÓRICO,

--   POR ISSO DEVEMOS 

--   VOLTAR AO PROJETO E EXPLORAR ISSO NA PRÁTICA...