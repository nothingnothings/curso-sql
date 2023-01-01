


 
----------------
SELECT * 
FROM addresses AS a        ------------------------> ISTO É CONSIDERADO COMO A 'LEFT TABLE' daquele último 'LEFT JOIN' statement....
LEFT JOIN users AS u ON a.id = u.address_id
--------------
LEFT JOIN cities AS c ON c.id = a.city_id;


















--> ISSO QUER DIZER QUE A 'LEFT TABLE'



-- DESSE último 'left join'

-- NAÕ 


-- SERÁ 

-- SOMENTE 


-- AQUELE 'addresses' 

-- lá do início,







-- MAS __ SIM __ 



-- O 'INTERMEDIATE RESULT SET'


-- QUE VAMOS OBTER 


-- DO 'addresses' left JOINADO com o 'users'...