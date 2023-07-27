-- employees - intranet_accounts 1:1
-- employees - projects N:N
-- employees - teams, teams - company_buildings 1:N 
-- ie each emplyee can be in 1 team and each team can have N employees,
-- similarly, each team can be in 1 bulding but each building can have multiple teams
-- also, each employee can be in N projects as well as each project can have N employees
-- and each employee can have 1 intranet acc as well as each intranet acc belongs to 1 employee

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
  FOREIGN KEY (team_id) REFERENCES teams (id) ON DELETE SET DEFAULT
);

CREATE TABLE intranet_accounts (
  id INT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(200),
  password VARCHAR(200) NOT NULL,
  FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE
);
