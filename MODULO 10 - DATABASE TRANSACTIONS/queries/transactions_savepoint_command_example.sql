INSERT INTO customers (first_name, last_name, email) -- SABEMOS que esse comando está regular/funcionando, POR ISSO SETTAMOS __ 1 SAVEPOINT_ LOGO _ DEPOIS DELE, PARA QUE SEJA __ POSSÍVEL FAZER 'JUMP TO' A ELE E NÃO SER NECESSÁRIO O RE-EXECUTAR, CASO ALGUMA QUERY MAIS PARA FRENTE DÊ PROBLEMA (como 'orders', no nosso caso)...
VALUES (
        'Billy',
        'Jones',
        'maria@test.com'
    );
SAVEPOINT customers_save;  ----É ASSIM QUE DEFINIMOS 1 SAVEPOINT...