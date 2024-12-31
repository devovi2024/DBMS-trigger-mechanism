CREATE TABLE person (
    id INT AUTO_INCREMENT,                -- 'id' column will auto-increment, meaning the value will automatically increase with each new record
    name VARCHAR(50) NOT NULL,             -- 'name' column cannot be NULL, meaning a value must be provided for every record
    passion VARCHAR(100) NOT NULL,         -- 'passion' column cannot be NULL, meaning a value must be provided for every record
    age INT CHECK (age >= 0),              -- 'age' column cannot have negative values; ensures that only valid (positive) ages are inserted
    address VARCHAR(100) NOT NULL,         -- 'address' column cannot be NULL, meaning a value must be provided for every record
    PRIMARY KEY (id)                      -- 'id' column is the primary key, ensuring each record has a unique identifier
);
