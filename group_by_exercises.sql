use justin;

select distinct title
from titles

select last_name
from employees
where last_name like 'E%'
  and last_name like '%E'
group by last_name;

select count(distinct first_name, last_name)
from employees
where last_name like 'E%'
  and last_name like '%E';

select distinct last_name
from employees
where last_name like '%q%'
  and last_name not like '%qu%';

select count(last_name), last_name
from employees
where last_name like '%q%'
  and last_name not like '%qu%'
group by last_name;

select count(emp_no), gender
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by gender;