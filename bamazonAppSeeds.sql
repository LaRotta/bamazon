-- Then create a Table inside of that database called `products`.

-- 3. The products table should have each of the following columns:

--    * item_id (unique id for each product)

--    * product_name (Name of product)

--    * department_name

--    * price (cost to customer)

--    * stock_quantity (how much of the product is available in stores)

-- 4. Populate this database with around 10 different products. (i.e. Insert "mock" data rows into this database and table).

-- https://www.slice.ca/money/photos/the-weirdest-things-to-ever-go-up-for-auction/#!Guinea-Pig-Armour_

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT,
    item_id INT NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    stock_quantity INT NOT NULL,
    PRIMARY KEY (id)
);


INSERT INTO products (item_id, product_name, department_name, price,stock_quantity)
VALUES (1, "A Piano Licked by Miley Cyrus", "Arts & Entertainment", 25000, 1);

INSERT INTO products (item_id, product_name, department_name, price,stock_quantity)
VALUES (2, "Justin Timberlake's French Toast", "Food", 500, 1);

INSERT INTO products (item_id, product_name, department_name, price,stock_quantity)
VALUES (3, "Scarlett Johansson's Used Tissue", "Toiletries", 2500, 1);

INSERT INTO products (item_id, product_name, department_name, price,stock_quantity)
VALUES (4, "William Shatner's Kidney Stones", "Health & Wellness", 10000, 5);

INSERT INTO products (item_id, product_name, department_name, price,stock_quantity)
VALUES (5, "John F. Kennedy's Boxer Shorts", "Clothing",2500, 8);

INSERT INTO products (item_id, product_name, department_name, price,stock_quantity)
VALUES (6, "Winston Churchill's False Teeth", "Health & Wellness", 15000, 3);

INSERT INTO products (item_id, product_name, department_name, price,stock_quantity)
VALUES (7, "John Lennon's Tooth", "Health & Wellness", 20000, 1);

INSERT INTO products (item_id, product_name, department_name, price,stock_quantity)
VALUES (8, "James Blunt's Sister", "Miscellaneous", 1, 1);

INSERT INTO products (item_id, product_name, department_name, price,stock_quantity)
VALUES (9, "A Decade-Old Grilled Cheese Sandwich", "Food", 15000, 5);

INSERT INTO products (item_id, product_name, department_name, price,stock_quantity)
VALUES (10, "A Suit of Armour for a Guinea Pig", "Arts & Entertainment", 15000, 2);



