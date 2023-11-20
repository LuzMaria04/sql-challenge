DROP TABLE IF EXISTS titles;

CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR(25)
);

SELECT * FROM titles;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(10),
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(1),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

DROP TABLE IF EXISTS departments;

CREATE TABLE departments(
	dept_no VARCHAR(10) PRIMARY KEY, 
	dept_name VARCHAR(25)
);

SELECT * FROM departments;

DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager(
	dept_no VARCHAR(10),
	emp_no INT,
	PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(10),
	PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;