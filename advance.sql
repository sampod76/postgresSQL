CREATE TABLE
    Departments (
        detId SERIAL PRIMARY KEY,
        deptName VARCHAR(255) NOT NULL
    );

insert into
    Departments
VALUES
    (1, 'accounting')
create TABLE
    Employees (
        empID SERIAL PRIMARY KEY,
        emmName VARCHAR(255) NOT NULL,
        departmentID INT,
        CONSTRAINT fk_constraints_dept FOREIGN KEY (departmentID) REFERENCES Departments (detId)
    );

insert into
    Employees (emmName, departmentID)
VALUES
    ('sampod', 1);

SELECT
    *
FROM
    Employees;

CREATE Table
    courses (
        course_id SERIAL PRIMARY KEY,
        course_name VARCHAR(255) NOT NULL,
        course_description VARCHAR(1000),
        publish_date DATE
    );

INSERT INTO
    courses (course_name, publish_date)
VALUES
    ('sampod', '2021-02-21'),
    ('sampod2', '2021-05-21'),
    ('sampod3', '2022-02-21');

SELECT
    *
FROM
    courses;

UPDATE courses
SET
    course_name = 'akahs',
    course_description = 'This is a sample course',
    publish_date = '2021-02-21'
WHERE
    course_id = 1;

-- 
--
CREATE TABLE
    IF NOT EXISTS departments (
        dept_ID SERIAL PRIMARY KEY NOT NULL,
        "name" VARCHAR(255) NOT NULL
    );

ALTER TABLE courses
ADD COLUMN student int4range;


ALTER TABLE courses
ALTER COLUMN "name"
DROP NOT NULL;

DROP TABLE departments;

-- 
--