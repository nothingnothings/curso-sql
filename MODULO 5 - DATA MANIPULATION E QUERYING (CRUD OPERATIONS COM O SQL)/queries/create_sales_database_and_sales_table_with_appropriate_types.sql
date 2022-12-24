-- CREATE DATABASE sales;
CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    date_fulfilled TIMESTAMP,
    customer_name VARCHAR(255) NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    volume DECIMAL,
    is_recurring BOOLEAN DEFAULT false,
    is_disputed BOOLEAN DEFAULT false
);