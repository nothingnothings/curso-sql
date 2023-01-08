CREATE TABLE projects_employees (
    employee_id INT,
    project_id INT,
    PRIMARY KEY (employee_id, project_id),
    FOREIGN KEY (employee_id, project_id) REFERENCES employees(id) ON DELETE CASCADE
)