CREATE TABLE employers (
    company_name VARCHAR(250) NOT NULL, --não poderá ser NULL (sempre devemos passar o value desse field, quando criamos um record nessa table)
    company_address VARCHAR(250),
    yearly_revenue NUMERIC(5,2),
    is_hiring BOOLEAN
);