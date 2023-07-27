-- DROP TABLE projects_employees;
-- DROP TABLE projects;
-- DROP TABLE intranet_accounts;
-- DROP TABLE employees;
-- DROP TABLE teams;
-- DROP TABLE company_buildings;

CREATE TABLE employees(
    id INT PRIMARY KEY AUTO_INCREMENT,
    f_name VARCHAR(300) NOT NULL,
    l_name VARCHAR(300) NOT NULL,
    supervisor_id INT,
    FOREIGN KEY (supervisor_id) REFERENCES employees(id) ON DELETE SET NULL
);
