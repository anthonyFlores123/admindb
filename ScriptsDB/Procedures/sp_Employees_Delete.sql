DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Employees_Delete`
(
In AtEmployeeID INTEGER
)
BEGIN
DELETE FROM employees
Where EmployeeID = AtEmployeeID;
END$$
DELIMITER ;