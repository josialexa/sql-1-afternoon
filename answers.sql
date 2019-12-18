CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  age INTEGER,
  height_cm INTEGER,
  city VARCHAR(50),
  favorite_color VARCHAR(50)
);

INSERT INTO person
(name, age, height_cm, city, favorite_color)
VALUES
('Josi', 25, 175, 'Dallas', 'Purple'),
('Natalie', 37, 183, 'Euless', 'Red'),
('Tasha', 12, 176, 'Euless', 'Pink'),
('Harper', 19, 163, 'Euless', 'Black'),
('Kathy', 52, 160, 'Bennington', 'Lavender');

SELECT * FROM person
ORDER BY height_cm DESC;

SELECT * FROM person
ORDER BY height_cm ASC;

SELECT * FROM person
ORDER by age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age NOT IN (27);

SELECT * FROM person
WHERE favorite_color <> 'Red';

SELECT * FROM person
WHERE favorite_color NOT IN ('Red', 'Blue');

SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

SELECT * FROM person
WHERE favorite_color IN ('Purple', 'Yellow');

CREATE TABLE orders (
  order_id SERIAL,
  person_id INTEGER,
  product_name VARCHAR(75),
  product_price NUMERIC(6,2),
  quantity INTEGER
);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(5, 'UltraBook Pro', 1000.00, 1),
(5, 'USB Type C Multi Dongle', 40.99, 2),
(2, 'Black socks, 6-pack', 12.99, 5),
(2, 'Grey zip up hoodie', 52.00, 1),
(2, 'USB mass storage, 500GB', 29.99, 3);

SELECT * FROM orders;

SELECT COUNT(*) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 2;

INSERT INTO artist
(name)
VALUES
('Hurt'),
('Slipknot'),
('In This Moment');

SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

SELECT * FROM employee
WHERE reports_to IN (
  SELECT employee_id FROM employee
  WHERE first_name = 'Nancy' AND last_name = 'Edwards'
);

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT COUNT(*) FROM invoice
WHERE billing_state in ('TX', 'CA', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;