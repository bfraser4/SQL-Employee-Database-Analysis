drop table departments
drop table dept_emp
drop table dept_manager
drop table employees
drop table salaries
drop table titles

--Create Departments table
create TABLE Departments(
  dept_no VARCHAR NOT NULL PRIMARY KEY, 
	dept_name VARCHAR NOT NULL)
	
--View Departments table
SELECT *
FROM Departments
	
--Create dept_emp table
create TABLE dept_emp(
  emp_no INTEGER NOT NULl, 
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no))
	
--View dept_emp table
SELECT *
FROM dept_emp

--Create dept_manager table
create TABLE dept_manager(
  dept_no VARCHAR NOT NULL, 
	emp_no INTEGER NOT NULL PRIMARY KEY)

--View dept_manager table
SELECT *
FROM dept_manager
	
--Create Employees table
create TABLE Employees(
  emp_no INTEGER NOT NULL PRIMARY KEY, 
	emp_title_id VARCHAR NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL, 
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL, 
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id))

--View Employees table
SELECT *
FROM Employees
	
--Create Salaries table
create TABLE Salaries(
  emp_no INTEGER NOT NULL, 
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no))

--View Salaries table
SELECT *
FROM Salaries
	
--Create Titles table
create TABLE Titles(
  title_id VARCHAR NOT NULL PRIMARY KEY, 
	title VARCHAR NOT NULL)
	
--View Titles table
SELECT *
FROM Titles