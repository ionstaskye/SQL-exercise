-- Comments in SQL Start with dash-dash --
INSERT INTO products (name, price, can_be_returned) 
VALUES ('chair', 44.00, false);
INSERT INTO products (name, price, can_be_returned) 
VALUES ('stool', 25.99, True);
INSERT INTO products (name, price, can_be_returned) 
VALUES ('table', 124.00, False);
SELECT * from products;
SELECT name FROM products;
SELECT name, price FROM products;
INSERT INTO products (name, price, can_be_returned) 
VALUES ('Fumo', 40.00, False);
SELECT name FROM products
WHERE can_be_returned = True;
SELECT name FROM products
WHERE price < 44.00;
SELECT name FROM products
WHERE price < 99.99
AND price > 22.50 ;
UPDATE products SET price = price - 20;
DELETE FROM products WHERE price < 25;
UPDATE products SET price = price + 20;
UPDATE products SET can_be_returned = True;