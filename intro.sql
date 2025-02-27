-- DROP DATABASE university2;

CREATE DATABASE test2;
/* 
-- ## create a table
create table "tablename" ()
*/

/* 
CREATE TABLE students (
student_id INT,
first_name VARCHAR(20),
last_name VARCHAR(20),
cgpa NUMERIC(1,2)
)
*/

--  Rename a table name
ALTER TABLE students RENAME TO students2;

-- drop table students
DROP TABLE students;

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    age INT DEFAULT 18
)
insert into
    users
values (
        1,
        'sampod',
        'sampod@gmail.com'
    );

SELECT * FROM users;

SELECT username FROM users;
-- ********************************

CREATE TABLE classtable (
    _id SERIAL PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255),
    age INT
)

SELECT * FROM classtable;

insert INTO classtable (_id, email) VALUES (2, 'sampoddd@gmail.coM');

-- INSERT multiple values-- Multiple rows insert (use single quotes for values)
INSERT INTO
    classtable (_id, email)
VALUES (7, 'sampod9@gmail.com'),
    (8, 'sam28@gmail.com'),
    (9, 'sam3@gmail.com');

SELECT * FROM classtable;

-- DELETE a TABLE DATA /ROWS ONLY
TRUNCATE TABLE classtable;

-- alter table --> table related any actions
-- Add a column ,drop column, change datatype of a column
-- rename a column, set DEFAULT value for a column
-- add CONSTRAINT to a column, drop constraint for a column
-- table rename
--**! ALTER TABLE table_name action

--  add a column
ALTER TABLE classtable 
ADD COLUMN password VARCHAR(200) DEFAULT 'admin123' NOT NULL;
ALTER TABLE classtable 
ADD COLUMN good VARCHAR(20) ;
--  delete c
ALTER TABLE classtable 
DROP COLUMN good;


--  rename a column
ALTER TABLE classtable 
RENAME COLUMN password TO pass;

-- change datatype of a column data type
ALTER TABLE classtable
 ALTER COLUMN good TYPE text;

 -- set DEFAULT value for a column
ALTER TABLE classtable 
 alter COLUMN good SET DEFAULT 'verygood'; 
--  remove default value for a column
ALTER TABLE classtable
 ALTER COLUMN good DROP DEFAULT

ALTER TABLE classtable 
 ADD COLUMN good2 TEXT;
--  add constraint

ALTER TABLE classtable 
 alter COLUMN good2 SET NOT NULL;


SELECT * FROM classtable;