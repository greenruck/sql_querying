INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, false);
INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, true);
INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, false);

SELECT id, name, price, can_be_returned FROM products;
SELECT name FROM products;
SELECT name, price FROM products;

INSERT INTO products (name, price, can_be_returned) VALUES ('painting', 349.95, true);

SELECT id, name, price FROM products WHERE can_be_returned = true;
SELECT id, name, price FROM products WHERE price < 40;
SELECT id, name, price FROM products WHERE price BETWEEN 22.50 and 99.99;

UPDATE products SET price = price - 20;
DELETE FROM products WHERE price < 25;
UPDATE products SET price = price + 20;
UPDATE products SET can_be_returned = true;
