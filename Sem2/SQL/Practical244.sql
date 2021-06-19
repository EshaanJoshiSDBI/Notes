DELIMITER $$ 
CREATE PROCEDURE procedure_1( IN check_no VARCHAR(10))
BEGIN
Select * FROM payments WHERE checkNumber = check_no ;
END $$
DELIMITER ;
call procedure_1('MN89921')

DELIMITER $$
CREATE PROCEDURE GetTotalOrder()
BEGIN
	DECLARE totalOrder INT DEFAULT 0;
    
    SELECT COUNT(*) 
    INTO totalOrder
    FROM orders;
    
    SELECT totalOrder;
END$$

DELIMITER ;

DELIMITER $$
CREATE PROCEDURE procedure_2()
BEGIN
SELECT customerNumber, checkNumber , paymentDate,
CASE
WHEN amount < 1000 then 'Free User'
WHEN amount < 10000 then 'Premium User'
WHEN amount > 10000 THEN 'Vip User'
ELSE 'NA'
END
FROM payments;
END $$
DELIMITER ;
call procedure_2();