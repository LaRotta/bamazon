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
    PRIMARY (id)
);


INSERT INTO products (product_name)
VALUES ("A Piano Licked by Miley Cyrus");

INSERT INTO products (product_name)
VALUES ("Justin Timberlake's French Toast");

INSERT INTO products (product_name)
VALUES ("Scarlett Johansson's Used Tissue");

INSERT INTO products (product_name)
VALUES ("William Shatner's Kidney Stone");

INSERT INTO products (product_name)
VALUES ("John F. Kennedy's Boxer Shorts");

INSERT INTO products (product_name)
VALUES ("Winston Churchill's False Teeth");

INSERT INTO products (product_name)
VALUES ("John Lennon's Tooth");

INSERT INTO products (product_name)
VALUES ("James Blunt's Sister");

INSERT INTO products (product_name)
VALUES ("A Decade-Old Grilled Cheese Sandwich");

INSERT INTO products (product_name)
VALUES ("A Suit of Armour for a Guinea Pig");



