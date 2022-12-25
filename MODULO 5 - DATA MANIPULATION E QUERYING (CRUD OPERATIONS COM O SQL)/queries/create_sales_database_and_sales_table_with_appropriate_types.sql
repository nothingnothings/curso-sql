-- CREATE DATABASE sales;


-- DROP TABLE sales; 


CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    date_created DATE DEFAULT CURRENT_DATE,
    date_fulfilled DATE,
    customer_name VARCHAR(255) NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    volume NUMERIC(10, 3) NOT NULL CHECK(volume > 0),
    is_recurring BOOLEAN DEFAULT false,
    is_disputed BOOLEAN DEFAULT false
);