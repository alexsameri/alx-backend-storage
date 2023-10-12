-- Creates a trigger that resets the attribute valid_email when email has been changed
CREATE TRIGGER resets
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    if NEW.email != OLD.email THEN
        SET NEW.valid_email = 0;
    END IF;
END;