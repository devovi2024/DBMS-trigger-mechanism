
-- Step 4: CREATE TRIGGER statement
CREATE TRIGGER before_insert_id
BEFORE INSERT ON person
FOR EACH ROW
BEGIN
    IF NEW.id < 0 THEN
        SET NEW.id = 0;
    END IF;
END;
//
