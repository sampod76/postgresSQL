CREATE TABLE Departments (
    detId SERIAL PRIMARY KEY,
    deptName VARCHAR(255) NOT NULL
);

insert into Departments VALUES(1, 'accounting')

create TABLE Employees (
    empID SERIAL PRIMARY KEY,
    emmName VARCHAR(255) NOT NULL,
    departmentID INT,
    CONSTRAINT fk_constraints_dept FOREIGN KEY (departmentID) REFERENCES Departments (detId)
);

insert into Employees (emmName,departmentID) VALUES('sampod',1);

SELECT * FROM Employees

