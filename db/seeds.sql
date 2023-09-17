USE company_db;

--  departments according to example
INSERT INTO department(id, name)
VALUES
(1, "Sales"),
(2, "Engineering"),
(3, "Finance"),
(4, "Legal");

-- roles according to example
INSERT INTO roles(id, title, salary, department_id)
VALUES
(1, "Sales Lead", 90000, 1),
(2, "Salesperson", 80000, 1),
(3, "Lead Engineer", 120000, 2),
(4, "Software Engineer", 110000, 2),
(5, "Account Manager", 120000, 3),
(6, "Accountant", 100000, 3),
(7, "Legal Team Lead", 180000, 4),
(8, "Lawyer", 180000, 4);

-- employees according to example
INSERT INTO employee(id, first_name, last_name, role_id, manager_id)
VALUES
(1, "John", "Doe", 1, 1),
(2, "Mike", "Chan", 2, 1),
(3, "Ashley", "Rodriguez", 3, 2),
(4, "Kevin", "Tupik", 4, 3),
(5, "Kunal", "Singh", 5, 3),
(6, "Malia", "Brown", 3, 5),
(7, "Sarah", "Lourd", 7, 4),
(8, "Tom", "Allen", 8, 7);

