CREATE TABLE tables (
    id SERIAL PRIMARY KEY,
    seats INT NOT NULL,
    category VARCHAR(30) DEFAULT 'small'
);
CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    booking_date DATE NOT NULL,
    guests INT NOT NULL,
    billed INT NOT NULL,
    tipped INT,
    payment_id INT REFERENCES payment_methods(id),
    table_id INT REFERENCES tables(id)
) CREATE TABLE payment_methods (
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL
)