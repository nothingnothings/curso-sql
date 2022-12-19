-- ALTER TABLE employers  ---alter table é um TERMO GUARDA-CHUVA, pq te deixa RODAR UM MONTE DE OPERAÇÕES ESPECIAIS...
-- MODIFY COLUMN


-- ALTER TABLE employers
-- MODIFY COLUMN yearly_revenue RENAME century_revenue -- EXEMPLO DE OPERAÇÃO POSSÍVEL, DENTRO DE 'ALTER TABLE'...



--- obs:: NO MYSQL, O TERMO é 'MODIFY COLUMN', e não ALTER COLUMN




ALTER TABLE employers 
-- MODIFY COLUMN yearly_revenue FLOAT(5,2)   --outro tipo de OPERAÇÃO (altera o DATA TYPE de uma column)...
MODIFY COLUMN yearly_revenue FLOAT  -- e podemos escrever 'FLOAT' assim, sem a aproximação providenciada pelos '()'...



ALTER TABLE users 
MODIFY COLUMN full_name SET DATA TYPE VARCHAR(300);



