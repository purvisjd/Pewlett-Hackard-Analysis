SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

SELECT first_name, last_name
FROM employees 
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31';

--retirement eligibility
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

select * from retirement_info

create table departments (
    dept_no VARCHAR(4) not null,
    dept_name VARCHAR(40) not null,
    primary key (dept_no)
    unique (dept_name)
);

create table employees (
    emp_no INT not null,
    birth_date DATE not null,
    first_name VARCHAR not null,
    last_name VARCHAR not null,
    gender VARCHAR not null,
    hire_date DATE not null,
    primary key (emp_no)
);

create table dept_manager (
    dept_no VARCHAR(4) not null,
    emp_no INT not null,
    from_date DATE not null,
    to_date DATE not null,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dep_no),
    primary key(emp_no, dept_no)
);

create table salaries (
    emp_no INT not null,
    salary IT not null,
    from_date DATE not null,
    to_date DATE not null,
    foreign key (emp_no) references employees (emp_no)
    primary key (emp_no)
);

create table dept_emp (
    emp_no INT not null,
    dept_no VARCHAR(4) not null,
    from_date DATE not null,
    to_date DATE not null,
    foreign key (emp_no) references employees (emp_no)
    foreign key (dept_no) references departments (dept_no)
    primary key (emp_no, dept_no)
);

create table titles (
    emp_no INT not null,
    title VARCHAR not null,
    from_date DATE not null,
    to_date DATE not_null,
    foreign key (emp_no) references employees (emp_no)
    primary_key (emp_no)
);