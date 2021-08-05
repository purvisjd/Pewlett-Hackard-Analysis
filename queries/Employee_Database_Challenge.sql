--select data for retirement titles table
select e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
into retirement_titles_table
from employees as e
inner join titles as t
on (e.emp_no = t.emp_no)
where (e.birth_date between '1952-01-01' and '1955-12-31')
order by e.emp_no
--select distinct records
select distinct on (emp_no)emp_no,
	first_name,
	last_name,
	title
into unique_titles
from retirement_titles_table
order by emp_no, to_date desc;

--select number of employees from most recent job title about to retire
select count(unique_titles.title),
	unique_titles.title
into retiring_titles
from unique_titles
group by unique_titles.title
order by count desc;


--create mentorship eligibility table to hold employees eligible to participate in mentorship program
select distinct on(e.emp_no) e.emp_no, 
	e.first_name,
	e.last_name,
	de.from_date,
	de.to_date,
	t.title
into mentorship_eligibility
from employees as e
inner join dept_emp as de
on (e.emp_no = de.emp_no)
inner join titles as t
on (t.emp_no = e.emp_no)
where (de.to_date = '9999-01-01')
and (e.birth_date between '1965-01-01' and '1965-12-31')
order by e.emp_no