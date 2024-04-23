#สร้าง table
CREATE TABLE `Kaofang_Store`.`Products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(100) NOT NULL,
  `price` INT NOT NULL,
  `in_stocks` INT NOT NULL,
  PRIMARY KEY (`id`));

#เพิ่มข้อมูลลงในตาราง
INSERT INTO products (product_name, price, in_stocks)
VALUES ('ปากกาชาร์ปปี้' , 35.00 , 436),
       ('ปากกาไวท์บอร์ด' , 30.00 , 129),
       ('กระดาษ A4 แพ็คเล็ก' , 57.00 , 173);

#แก้ไขคอลัมน์
ALTER TABLE `Kaofang_Store`.`Products`
CHANGE COLUMN `id` `id` INT NOT NULL ;

#เรียกดูข้อมูลทั้งหมดในตาราง
SELECT * FROM Kaofang_Store.Products;

#เรียกดูข้อมูลเฉพาะชื่อสินค้าและจำนวนคงเหลือ
SELECT product_name, in_stocks
FROM Products;

#เรียกดูข้อมูลด้วยคำสั่ง WHERE
SELECT * FROM Kaofang_Store.products
WHERE id = 3;

SELECT * FROM Kaofang_Store.products
WHERE price > 100;

SELECT * FROM Kaofang_Store.products
WHERE price > 100 or in_stocks > 100;

