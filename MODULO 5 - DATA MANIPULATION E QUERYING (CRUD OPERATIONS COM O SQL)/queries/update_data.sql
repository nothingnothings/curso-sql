UPDATE sales
SET product_name = 'A Truck', 
-- volume = 102000
volume = volume * 1000
WHERE id = 14;