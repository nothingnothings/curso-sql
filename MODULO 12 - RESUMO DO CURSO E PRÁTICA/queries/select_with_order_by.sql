SELECT *
FROM events
WHERE date_and_time >= '2022-06-01 00:00:00' AND min_age = 20
ORDER BY id DESC;