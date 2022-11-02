use `inventory_control_management`;
CREATE TRIGGER Order_Quantity_Deduction
BEFORE INSERT ON inventory_control_management.orders
FOR EACH ROW
UPDATE Inventory
SET On_Hand_Quantity = On_Hand_Quantity - NEW.Quantity_of_Product_Purchased ;

DELIMITER //
CREATE PROCEDURE TotalInventory()
select i.Store_ID, i.Product_ID, i.On_Hand_Quantity + i.On_Order_Quantity AS TotalInventory
from inventory i;
END //
DELIMITER ;CALL TotalInventory();

