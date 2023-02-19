INSERT INTO customers (first_name, last_name, email)
VALUES (
        'Billy',
        'Jones',
        'maria@test.com'
    );

SAVEPOINT customers_save;  ----É ASSIM QUE DEFINIMOS 1 SAVEPOINT...