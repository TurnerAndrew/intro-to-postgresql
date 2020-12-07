--Table - person

CREATE table person (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  age INTEGER,
  height INTEGER,
  city VARCHAR(250),
  favorite_color VARCHAR(50) 
  );


INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Andrew', 39, 182, 'Dallas', 'Blue'),
			 ('Bill', 52, 176, 'New York', 'Red'),
       ('Steve', 48, 165, 'Chicago', 'Black'),
       ('Luka', 23, 195, 'Dallas', 'Blue'),
       ('Dirk', 37, 210, 'Los Angeles', 'Green')


SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'Red';

SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue')

SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple')

--Table orders

CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(72),
  product_price DECIMAL,
  quantity INTEGER  
  );

INSERT INTO orders (person_id, product_name, product_price, quantity)
	VALUES (2, 'Cyberpunk 2077', 59.99, 1),
  			 (1, 'PS5', 499.99, 1),
         (5, 'XBox Series X', 499.99, 2),
         (17, 'RTX 3090', 999.99, 1),
         (17, '5950', 499.99, 5)

SELECT * FROM orders

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders
	WHERE person_id = 17;

--TABLE artist

INSERT INTO artist (name)
	VALUES ('Gorillaz'),
  			 ('Queens of the Stone Age'),
         ('Aesop Rock');

SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist
ORDER BY name ASC LIMIT 3;

SELECT * FROM artist
WHERE name  LIKE ('Black%');

SELECT * FROM artist
WHERE name LIKE ('%Black%');

--TABLE employee

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

SELECT * FROM employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards';

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(city = 'Lethbridge') FROM employee;

--TABLE invoice

SELECT COUNT(billing_country = 'USA') from invoice;

SELECT MAX(total) from invoice;

SELECT MIN(total) FROM invoice;

SELECT COUNT(billing_state IN ('CA', 'TX', 'AZ')) FROM invoice;

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;
