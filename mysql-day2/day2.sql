
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




