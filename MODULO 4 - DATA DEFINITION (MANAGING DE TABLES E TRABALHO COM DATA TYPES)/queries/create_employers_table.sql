CREATE TABLE employers (
    company_name VARCHAR(200),
    "address" VARCHAR(200),
    yearly_revenue FLOAT, --- SINTAXE POSTGRESQL É 'FLOAT' sem mais nada... sintaxe 'MYSQL' é 'FLOAT()' (com o número de DÍGITOS QUE VOCÊ QUER ARMAZEANR, EM GERAL, E QUANTOS DÍGITOS VOCÊ QUER ARMAZAENAR DEPOIS DO '.' ... ) 
    -- yearly_revenue NUMERIC(5,2) 
    isHiring BOOLEAN
)