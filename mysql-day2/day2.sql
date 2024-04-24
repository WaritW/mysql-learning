
#การใช้คำสั่ง LIKE ค้นหาชื่อที่ขึ้นต้นด้วยอักษร ‘ป’
SELECT * FROM Products
WHERE product_name LIKE 'ป%' ;

#การใช้คำสั่ง LIKE ค้นหาชื่อที่ลงท้ายด้วยอักษร ‘ป’
SELECT * FROM Products
WHERE product_name LIKE '%ป' ;

#การใช้คำสั่ง LIKE ค้นหาชื่อที่มีอักษร ‘ป’ จุดไหนก็ได้ของชื่อ
SELECT * FROM Products
WHERE product_name LIKE '%ป%' ;

#การใช้คำสั่ง LIKE ค้นหาชื่อที่อักษรตัวแรก เพียง 1 ตัว ขึ้นต้นด้วยอักษรใดก็ได้และอักษรทั้งหมดจะลงท้ายด้วยอะไรก็ได้ แต่ตัวอักษรที่ 2 ต้องเป็นอักษร ‘ร’
SELECT * FROM Products
WHERE product_name LIKE '_ร%' ;

#การใช้คำสั่ง LIKE ค้นหาชื่อที่ขึ้นต้นด้วยอักษร ‘ป’ และต้องลงท้ายด้วยอักษร ‘ด’
SELECT * FROM Products
WHERE product_name LIKE 'ป%ด' ;

#การใช้คำสั่ง OREDER BY DESC เพื่อเรียกดูข้อมูล ราคาสินค้าจากมากไปน้อย
SELECT * FROM Products
ORDER BY price DESC;

#การใช้คำสั่ง OREDER BY ASC เพื่อเรียกดูข้อมูล ราคาสินค้าจากน้อยไปมาก
SELECT * FROM Products
ORDER BY in_stocks ASC;

#การใช้คำสั่ง OREDER BY ASC เพื่อเรียกดูข้อมูล ชื่อสินค้าที่ขึ้นต้นด้วย ก-ฮ
SELECT * FROM Products
ORDER BY product_name ASC;

#การใช้คำสั่ง OREDER BY DESC เพื่อเรียกดูข้อมูล ชื่อสินค้าที่ขึ้นต้นด้วย ฮ-ก
SELECT * FROM Products
ORDER BY product_name DESC;

#การใช้คำสั่ง LIMIT เพื่อเรียกดูข้อมูลตามจำนวนที่ต้องการ
SELECT product_name, price
FROM Products
WHERE price < 100
LIMIT 2;

#การใช้คำสั่ง UPDATE เพื่ออัพเดทข้อมูลที่มีอยู่ในตาราง
UPDATE Products
SET in_stocks = 359
WHERE product_name = 'ปากกาไวท์บอร์ด';

#การใช้คำสั่ง DELETE ลบข้อมูลออกจากตาราง
DELETE FROM Products
WHERE in_stocks = 0;

#การใช้คำสั่ง SUM เพื่อรวมผลลัพธ์
SELECT SUM(in_stocks) AS sum_stocks
FROM Products;

#การใช้คำสั่ง COUNT เพื่อนับจำนวนข้อมูล
SELECT COUNT(product_name) AS count_products
FROM Products

#การใช้คำสั่ง AVG เพื่อหาค่าเฉลี่ย
SELECT AVG(price) AS avg_price
FROM Products;

#การใช้คำสั่ง GROUP BY มักจะใช้ร่วมกับคำสั่ง COUNT(), MAX(), MIN(), SUM(), AVG() เพื่อรวมกลุ่มผลลัพธ์
SELECT COUNT(product_name), price
FROM Products
GROUP BY price;

#การใช้คำสั่ง MIN เพื่อหาค่าน้อยสุด
SELECT MIN(price)
FROM Products;

#การใช้คำสั่ง MAX เพื่อหาค่ามากสุด
SELECT MAX(in_stocks)
FROM Products;