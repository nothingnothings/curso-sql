
--  COM A KEYWORD/FUNCTION DE 'EXTRACT()', podemos EXTRAIR INFO ESPECÍFICA DE TIMESTAMPS/DATES...
-- isso vai nos dar o mês, por exemplo...
SELECT EXTRACT(MONTH FROM last_checkin) FROM memberships;



-- OBS: 'DOW' funciona APENAS com postgresql
SELECT EXTRACT(DOW FROM last_checkin) FROM memberships; -- 'DOW' --> é 'DAY OF WEEK' -> é usado para EXTRAIR 'QUAL É O DIA DA SEMANA' em relação àqueles dias do query...


-- 0,1,2,3,4,5,6  (DAYS OF WEEK, SUN, MON, TUE, WED, THUR, FRI, SAT)




--- OBS: ISODOW também só funciona com postgres. A diferença é que 'SUN' é O NÚMERO 7, e não o número 0....
-- 1,2,3,4,5,6,7 (MON, TUE, WED, THUR, FRI, SAT, SUN)
SELECT EXTRACT (ISODOW FROM last_checkin) FROM memberships;





--  SINTAXE DE 'DIA DA SEMANA' QUE FUNCIONA COM O MYSQL:

-- 0,1,2,3,4,5,6 (MON, TUE, WED, THUR, FRI, SAT, SUN ) (6 para o domingo)
SELECT WEEKDAY(last_checkin) FROM memberships;





-- COM '+1', deixamos o comportamento desse statement, no mysql, igual ao comportamento de 'ISODOW' do POSTGRESQl...
-- 1,2,3,4,5,6,7 (MON, TUE, WED, THUR, FRI, SAT, SUN)
SELECT WEEKDAY(last_checkin) + 1 FROM memberships;


-- SELECT EXTRACT(DAY FROM last_checkin)
-- FROM memberships;



-- SELECT EXTRACT(YEAR FROM last_checkin)
-- FROM memberships;





-- SELECT EXTRACT(MINUTE FROM last_checkin)
-- FROM memberships;





--  ------> SUNDAY -> É 0...



-- MONDAY --> É 1 ...




-- SATURDAY --> É 6...








-- OBS: 'CONVERT()' apenas funciona com o MYSQL...
SELECT CONVERT() -- É USADA PARA __ cONVERTER__ TIMESTAMP EM DATE + TIME...






-- com isso, convertemos esse TIMESTAMP (last_checkin) NESSES 2 INPUTS SEPARADOS (ficam 2 columns separadas, 1 para o time, outro para o date, lá no result set)....
SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME)
FROM memberships;




--- A MESMA SINTAXE, MAS COM O POSTGRESQL (retrieva o TIME e a DATE, a partir do timestamp)...
SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
FROM memberships;