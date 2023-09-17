-- Drops database if exists
DROP DATABASE IF EXISTS company_db;
-- Creates new database "company_db"
CREATE DATABASE company_db;
USE company_db;
-- Drops tables we will create
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS employee;
-- creates department table, "id" is an integer and a primary key, "name" is variable characters limited to 30
CREATE TABLE department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);
-- creates roles table, "id" "id" is an integer and a primary key, "title" is variable characters limited to 30 and cannot be left blank, "salary" is a decimal, allows for higher number than INT. BIGINT could also be used. this can also not eb left blank
-- "department_id" is an integer and cannot be left blank, "constraint" limits the data type for the table, and is set to simultanously delete.
CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE,

-- record will be set to null upon deletetion of foreign key
    manager_id INT,
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);
