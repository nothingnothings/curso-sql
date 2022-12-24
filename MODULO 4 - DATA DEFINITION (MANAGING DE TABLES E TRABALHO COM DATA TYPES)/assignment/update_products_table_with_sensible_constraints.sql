ALTER TABLE products
ALTER COLUMN product_name SET NOT NULL,
ADD CONSTRAINT price_higher_than_0 CHECK (price > 0),
ALTER COLUMN product_description SET NOT NULL, 
ALTER COLUMN stock SET NOT NULL, 
ALTER COLUMN image_path SET NOT NULL;