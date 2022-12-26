SELECT *
FROM sales
WHERE is_disputed IS FALSE
ORDER BY volume DESC,
    customer_name ----ASSIM  - SEGUNDO CRITÉRIO DE ORDERING (só é aplicado, no caso, se 2 records tiverem o MESMO VALUE PARA O CRITÉRIO 1, de 'volume')
LIMIT 3;