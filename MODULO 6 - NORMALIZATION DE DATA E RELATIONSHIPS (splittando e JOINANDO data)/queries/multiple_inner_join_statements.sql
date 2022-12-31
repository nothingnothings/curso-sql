SELECT u.id,
    u.first_name,
    u.last_name,
    a.street,
    a.house_number,
    c.city_name
       c.city_name AS city_name_for_real --PODEMOS DEFINIR ALIASES PARA NOSSAS COLUMNS ATÉ MESMO NO PRIMEIRO SELECT STATEMENT, PARA DEIXAR NOSSO CÓDIGO MAIS CLARO...
FROM users AS u
    INNER JOIN addresses AS a ON u.address_id = a.id
    INNER JOIN cities AS c ON a.city_id = c.id;