CREATE TABLE employees (
    employee_number INT,
    birth_date  VARCHAR(20),
    first_name  VARCHAR(15),
    last_name   VARCHAR(15),
    gender      VARCHAR(15),
    hire_date   VARCHAR(20),
    PRIMARY KEY (employee_number)
);

CREATE TABLE departments (
    department_number     VARCHAR(4),
    dept_name   VARCHAR(40),
    PRIMARY KEY (department_number),
    UNIQUE   	(department_name)
);

CREATE TABLE department_manager (
   department_number VARCHAR(4),
   employee_number INT,
   from_date    DATE,
   to_date      DATE,
   FOREIGN KEY (employee_number) REFERENCES employees(employee_number),
   FOREIGN KEY (department_number) REFERENCES departments(department_number),
   PRIMARY KEY (employee_number,department_number)
);

CREATE TABLE department_employees (
    employee_number     INT,
    department_number     VARCHAR(4),
    from_date   DATE,
    to_date     DATE,
    FOREIGN KEY (employee_number)  REFERENCES employees(employee_number),
    FOREIGN KEY (department_number) REFERENCES departments(department_number),
    PRIMARY KEY (employee_number,department_number)
);

CREATE TABLE titles (
    employee_number      INT,
    title       VARCHAR(50),
    from_date   DATE,
    to_date     DATE,
    FOREIGN KEY (employee_number) REFERENCES employees (employee_number),
    PRIMARY KEY (employee_number,title, from_date)
);

CREATE TABLE salaries (
    employee_number INT,
    salary      INT,
    from_date   DATE,
    to_date     DATE,
    FOREIGN KEY (employee_number) REFERENCES employees (employee_number),
    PRIMARY KEY (employee_number, from_date)
);