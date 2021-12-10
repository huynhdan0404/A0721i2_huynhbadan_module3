create database demo;
use demo;

-- indexx------
ALTER TABLE product ADD INDEX idx_pcode(`code`);
EXPLAIN SELECT * FROM product WHERE `code` = 1; 

ALTER TABLE product ADD INDEX idx_pname_pprice(pname,pprice);
EXPLAIN SELECT * FROM product WHERE pname = 'quat' and pprice = 500; 

-- view -------
CREATE VIEW product_views AS
SELECT * FROM product;

CREATE OR REPLACE VIEW product_views AS

SELECT * FROM product WHERE id = 1;

DROP VIEW product_views;

-- store procedure-------
DELIMITER //
CREATE PROCEDURE findAllproduct()
BEGIN
  SELECT * FROM product;
END //
DELIMITER ;
call findAllproduct();


DELIMITER //
CREATE PROCEDURE addproduct()
BEGIN
 insert into product values(1,4,'ban',100,5);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE updateproduct()
BEGIN
update product 
set pprice = 600 where pname = 'quat';
END //
DELIMITER ;

call  updateproduct();

