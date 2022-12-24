ALTER TABLE products
ADD CONSTRAINT stock_equal_or_greater_than_0 CHECK (stock >= 0);
-- DROP CONSTRAINT stock_equal_or_greater_than_0;