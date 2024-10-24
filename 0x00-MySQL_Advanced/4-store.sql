-- a trigger that decreases the quantity of an item after adding a new order.
DELIMITER //

CREATE TRIGGER decrease_item_qauntity_after_order
AFTER INSERT ON orders
FOR EACH ROW ON
BEGIN
	UPDATE items
	SET quantity = quantity - NEW.quantity_ordered
	WHERE id = items_id;
END;
//

DELIMITER ;
