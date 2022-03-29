use justin;

select first_name, last_name
from employees
--          # where first_name in ('Irena', 'Vidya', 'Maya');
where (first_name = 'Irena'
    or first_name = 'Vidya'
    or first_name = 'Maya')
  and gender = 'M'
order by last_name desc, first_name desc;

select count(emp_no)
from employees
where last_name like 'E%'
  and last_name like '%E';

select *
from employees
where last_name like 'E%'
   or last_name like '%E'
order by emp_no desc;

select count(emp_no)
from employees
where last_name like '%q%'
  and last_name not like '%qu%';