-- INSERT INTO users VALUES    --os values inseridos deverão ser inseridos/passados por ORDEM...









--VARIANTE DE 'insert into' MENOS USADA (considera a ORDEM de colunas na sua table)
-- INSERT INTO users VALUES('Arthur Panazolo', 24000, 'employed');  --sempre use '' WRAPPANDO SUAS STRINGS A SEREM INSERIDAS/UPDATADAS, e nunca "" (pq isso resulta em ERROS)...






--variante de 'INSERT INTO' MAIS USADA (DECLARA A ORDEM DOS FIELDS ANTERIORMENTE, PARA SÓ ENTÃO INSERIR VALUES NOS MESMOS...)


-- essa variante TAMBÉM TE PERMITE ESPECIFICAR EM QUAIS FIELDS VOCÊ QUER INSERIR, E QUAIS FIELDS QUER DEIXAR INTACTO/NÃO QUER INSERIR COISA ALGUMA...



-- exemplo em que inserimos data em TODOS OS FIELDS de uma row (todas as columns)
-- INSERT INTO users (yearly_salary, full_name, current_status) VALUES (24000, 'Arthur Panazolo', 'employed');




-- exemplo em que inserimos data em APENAS ALGUNS FIELDS de uma row (apenas o 'salary' e o 'full_name'; 'current-status' FICARÁ EM BRANCO)...
INSERT INTO users (yearly_salary, full_name) VALUES (26000, 'Victor Panazolo');


