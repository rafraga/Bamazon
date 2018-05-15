DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(45) NULL,
  department_name VARCHAR(45) NULL,
  price DECIMAL(10,2) NULL,
  stock_quantity DECIMAL(10,2) NULL,
  PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("t-shirt", "clothing", 12.50, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("pen", "stationary", 1.50, 1000);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("pencil", "stationary", 1.50, 1000);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("hat", "clothing", 6.50, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("jacket", "clothing", 36.50, 500);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("socks", "clothing", 1.50, 500);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("iphone X charger", "cellphone accessories", 16.50, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("underware", "clothing", 1.50, 700);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("iphone X", "electronics", 900.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("iphone X screen protector", "cellphone accessories", 16.50, 100);