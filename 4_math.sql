SELECT
    avg(salary),
    sum(salary),
    max(salary),
    min(salary),
    count(salary)
FROM
    employees;

SELECT
    *
FROM
    employees
WHERE
    salary BETWEEN 40000 AND 50000;

SELECT
    count(e.name)
FROM
    employees AS e
WHERE
    salary BETWEEN 40000 AND 50000;

--
-- group by
SELECT
    departmentid,
    avg(salary)
FROM
    employees
GROUP BY
    employees.departmentid;

SELECT
    d.deptid,
    d.name,
    avg(e.salary) as averageTotalAmount,
    sum(e.salary),
    max(e.salary),
    count(*)
FROM
    employees e
    INNER JOIN department d on e.departmentid = d.deptid
GROUP BY
    d.deptid
    -- WHERE //not work when use group by then use HAVING
    -- HAVING
    --     avg(e.salary) > 70000
ORDER BY
    d.deptid ASC;

--
CREATE INDEX name_idx on employees (name);