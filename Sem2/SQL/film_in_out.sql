DELIMITER $$
-- Given the film_id and store_id, find the film count
CREATE PROCEDURE film_in_stock(
   IN  p_film_id INT,
   IN  p_store_id INT,
   OUT p_film_count INT)
READS SQL DATA
BEGIN
   SELECT inventory_id
     FROM inventory
     WHERE film_id = p_film_id
       AND store_id = p_store_id
       AND inventory_in_stock(inventory_id);
 
   SELECT FOUND_ROWS() INTO p_film_count;
END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE film_not_in_stock(IN p_film_id INT, IN p_store_id INT, OUT p_film_count INT)
READS SQL DATA
BEGIN
   SELECT inventory_id
   FROM inventory
   WHERE film_id = p_film_id
   AND store_id = p_store_id
   AND NOT inventory_in_stock(inventory_id);
 
   SELECT FOUND_ROWS() INTO p_film_count;
END $$
DELIMITER ;
USE sakila