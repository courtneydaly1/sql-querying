-- Comments in SQL Start with dash-dash --
-- 1. Add a product to the table with the name of “chair”, price of 44.00, and can_be_returned of false.
products_db=# INSERT INTO products (name, price, can_be_returned)
products_db-# VALUES ('chair', 44.00, 'f')
products_db-# ;
INSERT 0 1
-- 2. Add a product to the table with the name of “stool”, price of 25.99, and can_be_returned of true.
products_db=# INSERT INTO products (name, price, can_be_returned)
products_db-# VALUES ('stool', 25.99, 't');
INSERT 0 1

-- 3. Add a product to the table with the name of “table”, price of 124.00, and can_be_returned of false.
products_db=# INSERT INTO products (name, price, can_be_returned)
products_db-# VALUES ('table', 124.00, 'f');
INSERT 0 1

-- 4. Display all of the rows and columns in the table.
products_db-# ;
 id | name  | price | can_be_returned 
----+-------+-------+-----------------
  1 | chair |    44 | f
  2 | stool | 25.99 | t
  3 | table |   124 | f
(3 rows)

-- 5. Display all of the names of the products.
products_db=# SELECT name FROM products
products_db-# ;
 name  
-------
 chair
 stool
 table
(3 rows)

-- 6. Display all of the names and prices of the products.
products_db=# SELECT name, price FROM products
;
 name  | price 
-------+-------
 chair |    44
 stool | 25.99
 table |   124
(3 rows)

-- 7. Add a new product - make up whatever you would like!
products_db=# INSERT INTO products (name, price, can_be_returned)
VALUES ('Teddy_Bear', 24.50, 'f');
INSERT 0 1

-- 8. Display only the products that ***can_be_returned***
products_db=# SELECT * FROM products WHERE can_be_returned;
 id | name  | price | can_be_returned 
----+-------+-------+-----------------
  2 | stool | 25.99 | t
(1 row)

-- 9. Display only the products that have a price less than 44.00.
products_db=# SELECT * FROM products WHERE price < 44.00;
 id |    name    | price | can_be_returned 
----+------------+-------+-----------------
  2 | stool      | 25.99 | t
  4 | Teddy_Bear |  24.5 | f
(2 rows)

-- 10. Display only the products that have a price in between 22.50 and 99.99.
products_db=# SELECT * FROM products WHERE price < 99.99 AND price > 22.50;
 id |    name    | price | can_be_returned 
----+------------+-------+-----------------
  1 | chair      |    44 | f
  2 | stool      | 25.99 | t
  4 | Teddy_Bear |  24.5 | f
(3 rows)

-- 11. There’s a sale going on: Everything is $20 off! Update the database accordingly.
products_db=# UPDATE products SET price = price -20;
UPDATE 4

-- 12. Because of the sale, everything that costs less than $25 has sold out. Remove all products whose price meets this criteria.
products_db=# DELETE FROM products WHERE price < 25;
DELETE 3

-- 13. And now the sale is over. For the remaining products, increase their price by $20.
products_db=# UPDATE products SET price = price + 20
products_db-# ;
UPDATE 1

-- 14. There is a new company policy: everything is returnable. Update the database accordingly.
products_db=# UPDATE products SET can_be_returned = 't';
UPDATE 1
