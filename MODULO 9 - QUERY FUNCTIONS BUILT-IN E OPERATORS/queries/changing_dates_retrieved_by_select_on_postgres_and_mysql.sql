-- QUANDO ESTIVER USANDO O POSTGRESQL, utilize OS OPERADORES '+' e '-' para ALTERAR O VALUE DA DATE RETRIEVADA POR SELECT (Sem alterar o value do banco),

-- TIPO ASSIM:


-- SINTAXE POSTGRESQL...
SELECT membership_start + 7 --vai adicionar 7 DIAS a essa data de 'membership_start' retrievada aqui...
FROM memberships;



-- SINTAXE MYSQL (sem uso de '+' e '-')...

-- COMO PRIMEIRO PARÂMETRO, ESCOLHEMOS O FIELD A QUE DEVEMOS ADICIONAR 1 INTERVAL/dias...
-- COMO SEGUNDO PARÂMETRO, DEFINIMOS 1 'INTERVAL', que deverá ser adicionado nessa column aí...
-- colocamos, como PARAM, ESSA QUANTIDADE DE 7 DIAS... (mesma coisa que a query de cima, do postgresql)...
SELECT DATE_ADD(membership_start 7 DAY) FROM memberships;

-- SELECT DATE_SUB(column_name, amount_of_days YEAR/MONTH/DAY/HOUR/MINUTE/SECOND);









-- PARA FAZER O ADD DE MESES/ANOS A DATAS, NO POSTGRES, FAZEMOS ASSIM:


-- A QUANTIDADE DE dias/meses/anos DEVE SER ESCRITA COMO STRING (bem estranho)..
 SELECT membership_start + INTERVAL '7 MONTHS' FROM memberships; -- isso vai retornar uma TIMESTAMP...


--outro exemplo:
--  SELECT membership_start + INTERVAL '12 YEARS' FROM memberships; 


-- ISSO VAI RETORNAR 1 DATE, E NÃO 1 TIMESTAMP, POR CONTA DAQUELA SINTAXE DE CONVERSÃO ('::' '::')...
  SELECT (membership_start + INTERVAL '7 MONTHS')::TIMESTAMP::DATE FROM memberships;