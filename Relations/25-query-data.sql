-- employees - intranet_accounts 1:1
-- employees - projects N:N
-- employees - teams, teams - company_buildings 1:N 
-- ie each emplyee can be in 1 team and each team can have N employees,
-- similarly, each team can be in 1 bulding but each building can have multiple teams
-- also, each employee can be in N projects as well as each project can have N employees
-- and each employee can have 1 intranet acc as well as each intranet acc belongs to 1 employee


-- display all employees and their projects
-- SELECT e.id AS employee_id, e.first_name, e.last_name, p.title 
-- FROM employees AS e
-- LEFT JOIN projects_employees AS pe ON pe.employee_id = e.id
-- LEFT JOIN projects AS p ON pe.project_id = p.id;

-- display employees that have atleast one project (either part can have an INNER JOIN)
-- SELECT e.id AS employee_id, e.first_name, e.last_name, p.title FROM employees AS e
-- INNER JOIN projects_employees AS pe ON pe.employee_id = e.id
-- LEFT JOIN projects AS p ON pe.project_id = p.id;

-- each employee has one team so inner join works taking all employees in result
-- display employees in a team
-- SELECT e.id AS employee_id, e.first_name, e.last_name, t.name
-- FROM employees AS e
-- INNER JOIN teams AS t ON e.team_id = t.id
-- WHERE t.id = 2;

-- which employees are in building 3
SELECT e.id AS employee_id, e.first_name, e.last_name, e.birthdate, b.name
FROM employees AS e
INNER JOIN teams AS t ON e.team_id = t.id
INNER JOIN company_buildings AS b ON t.building_id = b.id
WHERE b.id = 3
ORDER BY e.birthdate;


