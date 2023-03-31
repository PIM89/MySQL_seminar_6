use seminar_6;

/*Выведите только четные числа от 1 до 10 включительно. (Через функцию / процедуру)
Пример: 2,4,6,8,10 (можно сделать через шаг +  2: х = 2, х+=2)*/

DROP PROCEDURE num_even;
DELIMITER //
CREATE PROCEDURE num_even(n INT)
BEGIN
	DECLARE res VARCHAR(255) DEFAULT '';
	DECLARE i INT DEFAULT 2;
	WHILE i <= n DO
		SET res = CONCAT(res, i, ', ');
		SET i = i + 2;
	END WHILE;
	SELECT res;
END //

CALL num_even(10);