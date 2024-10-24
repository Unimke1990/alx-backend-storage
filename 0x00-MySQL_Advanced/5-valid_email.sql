-- trigger that reset email status
DELIMITER //
CREATE TRIGGER reset_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF NEW.email != OLD.email THEN
	SET valid_email = FALSE
	WHERE id = NEW.id;
    END IF;
END //
DELIMITER ;

