use seminar_6;
/*Создайте функцию, которая принимает кол-во сек и форматирует их в кол-во дней, часов, минут и секунд.
Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '*/

/* 
день 86400
часa 3600
минута 60
*/

DELIMITER $$
CREATE FUNCTION conv_time(sec INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
	DECLARE res VARCHAR(100) DEFAULT '';
    
	IF sec DIV 86400 >= 1 THEN
		SET res = CONCAT(res, sec DIV 86400, ' days ');
		SET sec = sec - (sec DIV 86400)*86400;
	END IF;
	IF sec DIV 3600 >= 1 THEN
		SET res = CONCAT(res, sec DIV 3600, ' hours ');
        SET sec = sec - (sec DIV 3600)*3600;
	END IF;
	IF sec DIV 60 >= 1 THEN
		SET res = CONCAT(res, sec DIV 60, ' minutes ');
        SET sec = sec - (sec DIV 60)*60;
	SET res = CONCAT(res, sec, ' seconds');
    END IF;
    RETURN res;
END $$

 SELECT conv_time(123456);

