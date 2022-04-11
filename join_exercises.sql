use justin;


select departments.dept_name, concat(first_name, ' ', last_name) as department_manager
from departments
         join dept_manager
              on departments.dept_no = dept_manager.dept_no
         join employees
              on dept_manager.emp_no = employees.emp_no
where to_date = '9999-01-01';


select departments.dept_name, concat(first_name, ' ', last_name) as department_manager
from departments
         join dept_manager
              on departments.dept_no = dept_manager.dept_no
         join employees
              on dept_manager.emp_no = employees.emp_no
where to_date = '9999-01-01'
  and employees.gender like 'f';


select title, count(employees.emp_no) as total
from employees
         join dept_emp
              on employees.emp_no = dept_emp.emp_no
         join departments
              on dept_emp.dept_no = departments.dept_no
         join titles
              on employees.emp_no = titles.emp_no
where dept_emp.to_date = '9999-01-01'
  and titles.to_date = '9999-01-01'
  and dept_name like 'customer service'
group by title
order by total desc;


select dept_name, concat(first_name, ' ', last_name) as department_manager, salary
from departments
         join dept_manager
              on departments.dept_no = dept_manager.dept_no
         join employees
              on employees.emp_no = dept_manager.emp_no
         join salaries
              on employees.emp_no = salaries.emp_no
where dept_manager.to_date = '9999-01-01'
  and salaries.to_date = '9999-01-01';


select concat(first_name, ' ', last_name) as employee,
       dept_name,
       concat(first_name, ' ', last_name) as department_manager
from employees
         join dept_emp
              on employees.emp_no = dept_emp.emp_no
         join departments
              on dept_emp.dept_no = departments.dept_no
         join dept_manager
              on departments.dept_no = dept_manager.dept_no
where dept_emp.to_date = '9999-01-01'
  and dept_manager.to_date = '9999-01-01'
union select concat(first_name, ' ', last_name) as department_manager
from employees;