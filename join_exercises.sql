use justin;


select departments.dept_name, concat(first_name, ' ', last_name) as department_manager
from departments
         join dept_manager
              on departments.dept_no = dept_manager.dept_no
         join employees
              on dept_manager.emp_no = employees.emp_no
where to_date > curdate();


select departments.dept_name, concat(first_name, ' ', last_name) as department_manager
from departments
         join dept_manager
              on departments.dept_no = dept_manager.dept_no
         join employees
              on dept_manager.emp_no = employees.emp_no
where to_date > curdate()
  and employees.gender like 'f';


select title, count(employees.emp_no) as total
from employees
         join dept_emp
              on employees.emp_no = dept_emp.emp_no
         join departments
              on dept_emp.dept_no = departments.dept_no
         join titles
              on employees.emp_no = titles.emp_no
where dept_emp.to_date > curdate()
  and titles.to_date > curdate()
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
where dept_manager.to_date > curdate()
  and salaries.to_date > curdate();


select concat(e.first_name, ' ', e.last_name)   as Employee,
       d.dept_name                              as 'Department Name',
       concat(e2.first_name, ' ', e2.last_name) as 'Department Manager'
from employees e
         join dept_emp de on e.emp_no = de.emp_no
         join departments d on de.dept_no = d.dept_no
         join dept_manager dm on d.dept_no = dm.dept_no
         join employees e2 on e2.emp_no = dm.emp_no
where de.to_date > curdate()
and dm.to_date > curdate();

