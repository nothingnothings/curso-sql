-- ALTER TABLE employers  ---alter table é um TERMO GUARDA-CHUVA, pq te deixa RODAR UM MONTE DE OPERAÇÕES ESPECIAIS...
-- ALTER COLUMN


-- ALTER TABLE employers
-- ALTER COLUMN yearly_revenue RENAME century_revenue -- EXEMPLO DE OPERAÇÃO POSSÍVEL, DENTRO DE 'ALTER TABLE'...



ALTER TABLE employers 
ALTER COLUMN yearly_revenue SET DATA TYPE FLOAT;   --outro tipo de OPERAÇÃO (altera o DATA TYPE de uma column)...




ALTER TABLE users 
ALTER COLUMN full_name SET DATA TYPE VARCHAR(300);


