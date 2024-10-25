-- trigger that reset email status
DROP TRIGGER IF EXISTS reset_email;
DELIMITER //
CREATE TRIGGER reset_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email != NEW.email THEN
	SET NEW.valid_email = FALSE;
    END IF;
END //
DELIMITER ;

