CREATE TABLE
    IF NOT EXISTS department (
        deptID SERIAL PRIMARY KEY,
        name VARCHAR(255) NOT null
    );

INSERT INTO
    department (name)
VALUES
    ('Education');

SELECT
    *
FROM
    department;

-- 
--
CREATE TABLE
    IF NOT EXISTS employees (
        empId SERIAL PRIMARY KEY,
        name varchar(255) NOT null,
        email text NOT NULL,
        salary INTEGER NOT NULL,
        joining_date DATE NOT NULL,
        departmentId INTEGER NOT NULL,
        CONSTRAINT fk_departmentId FOREIGN KEY (departmentId) REFERENCES department (deptID)
    );

INSERT INTO
    employees (name, email, salary, joining_date, departmentId)
VALUES
    (
        'John Doe',
        'john.doe@example.com',
        50000,
        '2021-05-10',
        1
    ),
    (
        'Jane Smith',
        'jane.smith@example.com',
        55000,
        '2020-03-12',
        2
    );

SELECT
    name,
    departmentid,
    email
FROM
    employees;

-- aony unique value / mongodb (group)
SELECT DISTINCT
    departmentid
FROM
    employees;

--
SELECT
    *
FROM
    employees
WHERE
    salary > 20000;

-- 
SELECT
    *
FROM
    employees
WHERE
    salary > 20000
    AND departmentid = 1;

--
SELECT
    *
FROM
    employees
WHERE
    salary >= 20000
    OR departmentid = 1;

--not equal
SELECT
    *
FROM
    employees
WHERE
    departmentid <> 1;

-- orderby
SELECT
    *
FROM
    employees
ORDER BY
    name ASC;

-- limit by
SELECT
    *
FROM
    employees
ORDER BY
    name ASC
LIMIT
    20;

--Pagination
SELECT
    *
FROM
    employees
ORDER BY
    name ASC
LIMIT
    10
OFFSET --! Page
    2;

-- IN , NOT IN , BETWEEN ,LIKE
SELECT
    *
FROM
    employees
WHERE
    empid IN (1, 5, 8);

-- not in
SELECT
    *
FROM
    employees
WHERE
    empid NOT IN (1, 5, 8);

SELECT
    *
FROM
    employees
WHERE
    departmentid = 1
ORDER BY
    name DESC
LIMIT
    10
OFFSET
    2;

--Join / populate /lookup
SELECT
    *
FROM
    employees
    INNER JOIN department ON employees.departmentid = department.deptid;

SELECT
    employees.name,
    employees.empid,
    employees.salary
FROM
    employees
    INNER JOIN department ON employees.departmentid = department.deptid;

-- setup alias
SELECT
    e.name,
    e.departmentid,
    e.salary
FROM
    employees e
    INNER JOIN department d ON e.departmentid = d.deptid;

-- left join
SELECT
    *
FROM
    employees e
    LEFT JOIN department d ON d.deptid = e.departmentid
WHERE
    e.salary > 90000
ORDER BY
    e.name ASC
LIMIT
    20
OFFSET
    1;

-- right join
SELECT
    *
FROM
    employees e
    RIGHT JOIN department d ON e.departmentid = d.deptid
WHERE
    e.salary >= 80000
ORDER BY
    e.name
LIMIT
    20
OFFSET
    1;

---full join
SELECT
    *
FROM
    employees e
    FULL JOIN department d ON e.departmentid = d.deptid
WHERE
    e.name LIKE '%A%'
    OR d.deptid = 2
ORDER BY
    d.name ASC
LIMIT
    20
OFFSET
    1;