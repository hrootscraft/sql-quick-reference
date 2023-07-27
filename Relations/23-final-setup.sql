CREATE TABLE projects (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(300) NOT NULL,
  deadline DATE
);

CREATE TABLE company_buildings (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(300) NOT NULL
);

-- if a building is deleted, set teams to NULL
CREATE TABLE teams (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(300) NOT NULL,
  building_id INT,
  FOREIGN KEY (building_id) REFERENCES company_buildings (id) ON DELETE SET NULL
);

-- if a team is deleted, assign those team employees to team 1
CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  birthdate DATE NOT NULL,
  email VARCHAR(200) UNIQUE NOT NULL,
  team_id INT DEFAULT 1,
  -- FOREIGN KEY (team_id) REFERENCES teams (id) ON DELETE SET DEFAULT -- does not work in innoDB mysql
  FOREIGN KEY (team_id) REFERENCES teams (id) ON DELETE SET NULL
);

CREATE TABLE intranet_accounts (
  id INT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(200),
  password VARCHAR(200) NOT NULL,
  FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE
);

-- Intermediate Relations table => N:N
CREATE TABLE projects_employees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  employee_id INT,
  project_id INT,
  FOREIGN KEY (employee_id) REFERENCES employees(id) ON DELETE CASCADE,
  FOREIGN KEY (project_id) REFERENCES projects(id) ON DELETE CASCADE
  -- another alternative: remove the surrogate pk and add a composite KEY
  -- PRIMARY KEY (employee_id, project_id)
);
