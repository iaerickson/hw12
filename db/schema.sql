### Schema

CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE employee
(
	id int NOT NULL AUTO_INCREMENT,
	first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
	FOREIGN KEY (role_id) REFERENCES role(id),
    FOREIGN KEY (manager_id) REFERENCES role(id) WHERE role(title) IS manager,
	PRIMARY KEY (id)
);

CREATE TABLE role
(
	id int NOT NULL AUTO_INCREMENT,
	title varchar(30) NOT NULL,
	salary decimal NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department(id),
	PRIMARY KEY (id)
);

CREATE TABLE department
(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(30),
	PRIMARY KEY (id)
);