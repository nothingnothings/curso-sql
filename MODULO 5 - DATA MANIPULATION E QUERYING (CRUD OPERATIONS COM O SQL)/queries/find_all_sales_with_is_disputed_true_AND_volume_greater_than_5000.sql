SELECT *
FROM sales
WHERE (is_disputed IS TRUE)
    AND (volume > 4999);