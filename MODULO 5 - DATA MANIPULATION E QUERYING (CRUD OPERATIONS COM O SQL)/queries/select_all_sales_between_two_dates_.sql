SELECT *
FROM sales
WHERE date_created > '2021-11-01' --- DATES, PASSADAS COMO STRINGS, SÃO TRATADAS INTERNAMENTE COMO 'DATES', PELO SQL...
    AND date_created < '2022-12-02'; ---ESSA É UMA DAS MANEIRAS DE CRIAR UMA RANGE..












SELECT *
FROM sales
WHERE date_created BETWEEN '2021-11-01' AND '2022-12-02'; -- OUTRA MANEIRA (mais elegante) de definir RANGES ---- OBS: O 'BETWEEN AND' é a MESMA COISA QUE O '>=' e '<=' usados com DATES, mas não é a mesma coisa que a escrita de cima, de "WHERE 'date_created' > date1 AND date_created < 'date2' "











EX:










-- SELECT * FROM sales
-- WHERE volume > 1000 AND volume < 100000;  











-- OU 


-- SELECT * FROM sales 
-- WHERE volume BETWEEN 1000 AND 100000;  -- mesma coisa que '>= 1000' e '<= 1000'


