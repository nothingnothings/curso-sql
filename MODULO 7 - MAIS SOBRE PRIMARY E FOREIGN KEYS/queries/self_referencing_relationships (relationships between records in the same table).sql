CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    supervisor_id INT REFERENCES employees (id) ON DELETE SET NULL  -- aqui REFERENCIAMOS NOSSA PRÓPRIA TABLE, PQ É ISSO QUE SÃO 'self-referencing relationships'..
); ---- se o SUPERVISOR É APAGADO, a column de 'supervisor_id' DOS SUPERVISIONADOS FICA COMO 'NULL' (fica vazia)...