use justin;

describe employees;

describe departments;

describe dept_emp;

describe dept_manager;

describe salaries;


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
where dept_emp.to_date = '9999-01-01' and dept_name like 'customer service'
group by title
order by total desc;