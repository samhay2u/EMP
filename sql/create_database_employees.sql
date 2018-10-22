-- Use mysql main database
use mysql;

-- Drop User and database
drop user 'EMPLOYEES'@'localhost';

-- Create user PIS
CREATE USER 'EMPLOYEES'@'localhost' IDENTIFIED BY 'tset';

-- Create PIS database
CREATE DATABASE IF NOT EXISTS employees;

-- Give all priviledges to PIS user
GRANT ALL PRIVILEGES ON employees.* TO 'EMPLOYEES'@'localhost';

-- Provide proper access to create triggers
set global log_bin_trust_function_creators=1;

 