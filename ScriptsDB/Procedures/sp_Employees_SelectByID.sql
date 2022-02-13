DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Employees_SelectRow`
(
In AtEmployeeID INTEGER
)
BEGIN
SELECT * FROM Employees Where EmployeeID = AtEmployeeID;

END$$
DELIMITER ;
