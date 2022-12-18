CREATE TABLE conversations (
    message TEXT, --STRINGS DE QUALQUER LENGTH
    date_sent TIMESTAMP, --suportado PELO MYSQL E POSTGRESQL..
    user_name VARCHAR(200), --strings de length 200 (200 bytes)
    employer_name VARCHAR(200)
);