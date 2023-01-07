INSERT INTO employees (
        first_name,
        last_name,
        birthdate,
        email
    )
VALUES (
        'Arthur',
        'Panazolo',
        '1998-06-10',
        'arthur@panazolo.com' ---- o email é o que defnie, nesse caso, A RELATION ENTRE O 'intranet_accounts' e o 'employees', pq é ele que está com a FOREIGN KEY CONSTRAINT (criada com 'REFERENCES')....
    );
INSERT INTO intranet_accounts (email, password)
VALUES (
        'arthur@panazolo.com',
        'sadasdasdas'
    );