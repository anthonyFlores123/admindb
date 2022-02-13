DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Employees_SelectAll`()
BEGIN
SELECT * FROM Employees;

END$$
DELIMITER ;
