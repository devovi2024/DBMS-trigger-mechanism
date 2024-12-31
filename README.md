<!-- README.md -->

# Understanding Triggers in SQL

## What is a Trigger?

![Trigger Icon](https://via.placeholder.com/20) **Trigger**

A **trigger** is a special function in SQL that automatically executes a specified action when a specific event happens in a database table. These events can include operations like **INSERT**, **UPDATE**, or **DELETE**.

> **Think of a trigger as a "watchdog" that makes sure everything in the database is correct and follows the rules.**

---

## Why Use Triggers?

![Why Icon](https://via.placeholder.com/20) **Why Triggers?**

Triggers are extremely useful for various reasons:

- ✅ **Prevent Errors**: They automatically prevent issues like duplicate data from being inserted.
- ⏳ **Automate Tasks**: They remove the need for repetitive manual tasks.
- 🔒 **Maintain Rules**: They ensure the database stays consistent with the business rules.

---

## Where Are Triggers Used?

![Usage Icon](https://via.placeholder.com/20) **Trigger Use Cases**

Here are some common use cases for triggers:

1. 📊 **Data Validation**: You can use triggers to check or modify data before it is inserted into the database.
2. ♻️ **Sync Tables**: Triggers can automatically update other related tables when one is modified.
3. 🔨 **Audit Logs**: Triggers are great for recording changes to the database for auditing purposes.

---

## How Does a Trigger Work?

A trigger follows three main steps:

1. **Event**: When will the trigger activate? This is usually specified as an event like **BEFORE INSERT** or **AFTER UPDATE**.
2. **Condition**: What condition or check needs to be satisfied for the trigger to execute?
3. **Action**: What action will the trigger take if the condition is met? This could be anything from inserting data to showing an error message.

## Trigger Structure
# SQL Triggers Explained

## Introduction

SQL Triggers are a type of stored procedure that automatically execute (or "trigger") when a specified event occurs on a particular table or view in a database. They can help automate actions like auditing, data validation, or enforcing business rules without requiring explicit calls from the application code.

## Key Components of SQL Triggers

- **CREATE TRIGGER trigger_name**: Defines the name you're assigning to the trigger.
- **BEFORE | AFTER**: Specifies when the trigger should be fired—before or after a data manipulation operation (INSERT, UPDATE, or DELETE) occurs on the table.
- **ON table_name**: Indicates the table on which the trigger will be applied.
- **FOR EACH ROW**: Denotes whether the trigger will execute for each affected row during the DML operation.
- **BEGIN ... END**: This block contains the SQL statements that define the actions the trigger will perform, such as inserting data into another table, updating existing data, or logging changes.

## Example of a SQL Trigger

### Scenario: Logging Insert Operations

Here’s an example trigger that logs insert operations into a table named `audit_log`:

```sql
CREATE TRIGGER insert_log
AFTER INSERT ON customer_table
FOR EACH ROW
BEGIN
  INSERT INTO audit_log (operation, table_name, timestamp, new_data)
  VALUES ('INSERT', 'customer_table', CURRENT_TIMESTAMP, NEW);
END;
