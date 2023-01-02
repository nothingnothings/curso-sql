SELECT *
FROM users
    CROSS JOIN addresses; --- te entrega um result set COM TODAS AS POSSÍVEIS COMBINATIONS da relation entre o 'users' e o 'addresses' (é o CARTESIAN PRODUCT, OU SEJA, MOSTRA TODOS OS RECORDS POSSÍVEIS, toda as relations POSSÍVEIS, que não existem na table de verdade, mas que PODERIAM EXISTIR)