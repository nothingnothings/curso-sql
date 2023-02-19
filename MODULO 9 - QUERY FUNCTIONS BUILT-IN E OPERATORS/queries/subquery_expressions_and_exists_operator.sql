

--  O __ 'EXISTS' CHECA SE 1 CERTEIRO VALUE __ EXISTE_ NA SUA TABLE, EM 1 DETERMINADA COLUMN... -> E, ENTÃO, RETORNA 'TRUE'/'FALSE' a depender da existência desse negócio (no MYSQL, ele retorna '1' ou '0')...
SELECT EXISTS(
        SELECT first_name,
            last_name
        FROM customers
        WHERE email = 'manu@test.com';
)


--  OBS: USAR 'EXISTS' É MAIS _ EFETIVO _ DO QUE USAR UM FILTER COM 'WHERE'-->  ISSO __ PQ _1 FILTER TIPICAMENTE RODA A QUERY __ SOBRE __ tODA A TABLE, TODAS AS ROWS DA TABLE, ENQUANTO QUE, NO CASO DE 'EXISTS', ELE __ PARA__ NA HORA QUE _1  CERTA ENTRY _ FOR ENCONTRADA (pq se for encontrado apenas 1 VALUE DAQUELE NEGÓCIO, já vai ficar como 'true')...