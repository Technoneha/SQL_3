CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock INT,
    brand VARCHAR(50)
);

select * from Products


INSERT INTO Products (product_name, category, price, stock, brand)
VALUES 
('Redmi Note 13', 'Mobile', 13999.00, 50, 'Xiaomi'),
('Galaxy A55', 'Mobile', 28999.00, 30, 'Samsung'),
('Dell Inspiron 15', 'Laptop', 45999.00, 20, 'Dell'),
('HP Pavilion', 'Laptop', 49999.00, 15, 'HP'),
('Boat Rockerz 255', 'Headphones', 999.00, 100, 'Boat'),
('Sony WH-1000XM5', 'Headphones', 29999.00, 5, 'Sony'),
('Realme Narzo 70', 'Mobile', 15999.00, 40, 'Realme'),
('Lenovo ThinkPad E14', 'Laptop', 59999.00, 10, 'Lenovo');

--- Select show specific column 
 SELECT product_name, price FROM Products;

--All column
select * from Products

---WHERE clouse
SELECT * FROM Products
WHERE brand = 'HP';


---order by 

SELECT product_name, price FROM Products
ORDER BY price DESC;


--Like ( show the products which start from s)

SELECT * FROM Products
WHERE product_name LIKE 'S%';

--BETWEEN  (price between 10k to 50k )
SELECT product_name, price FROM Products
WHERE price BETWEEN 10000 AND 50000;

--AND
SELECT * FROM Products
WHERE category = 'Laptop' AND price < 50000;

---OR
SELECT * FROM Products
WHERE brand = 'Boat' OR brand = 'Sony';

