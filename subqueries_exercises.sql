use justin;


select concat(first_name, ' ', last_name) as Employee
from employees
where hire_date in (
    select hire_date
    from employees
    where emp_no = '101010');


select title, count(title)
from titles
where emp_no in (
    select employees.emp_no
    from employees
    where first_name = 'Aamod'
)
group by title;


select first_name, last_name
from employees
where gender = 'f'
  and emp_no in (
    select emp_no
    from dept_manager
    where to_date > curdate()
);


select dept_name
from departments
where dept_no in (
    select dept_no
    from dept_manager
    where to_date > curdate()
      and emp_no in (
        select emp_no
        from employees
        where gender = 'f'
    )
);