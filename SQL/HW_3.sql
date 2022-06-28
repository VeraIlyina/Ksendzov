-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary 
from employees
join salary 
on employees.id = salary.id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary 
from employees
join salary 
on employees.id = salary.id
where monthly_salary  < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employee_name, salary.monthly_salary from employee_salary
left join employees on employee_salary.employee_id = employees.id
right join salary on employees.id = salary.id
where employees.employee_name is null;


-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employee_name, salary.monthly_salary from employee_salary
left join employees on employee_salary.employee_id = employees.id
right join salary on employees.id = salary.id
where salary.monthly_salary < 2000 and employees.employee_name is null;


-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employees.employee_name, salary.monthly_salary from employee_salary
left join salary on employee_salary.employee_id = salary.id 
join employees on employee_salary.employee_id = employees.id
where salary.monthly_salary is null;

-- 6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, roles.role_name from employees
join roles on employees.id = roles.id;

-- 7. ������� ����� � ��������� ������ Java �������������.
select employee_name, roles.role_name from employees
join roles on employees.id = roles.id
where roles.role_name like '%Java developer';

-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, roles.role_name from employees
join roles on employees.id = roles.id
where roles.role_name like '%Python developer';

-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, roles.role_name from employees
join roles on employees.id = roles.id
where roles.role_name like '%QA engineer';

-- 10. ������� ����� � ��������� ������ QA ���������.
select employee_name, roles.role_name from employees
join roles on employees.id = roles.id
where roles.role_name like '%Manual QA engineer';

-- 11. ������� ����� � ��������� ��������������� QA
select employee_name, roles.role_name from employees
join roles on employees.id = roles.id
where roles.role_name like '%Automation QA engineer';

-- 12. ������� ����� � �������� Junior ������������
select employee_name, roles.role_name from employees
join roles on employees.id = roles.id
where roles.role_name like 'Junior%';

-- 13. ������� ����� � �������� Middle ������������
select employee_name, roles.role_name from employees
join roles on employees.id = roles.id
where roles.role_name like 'Middle%';

-- 14. ������� ����� � �������� Senior ������������
select employee_name, roles.role_name from employees
join roles on employees.id = roles.id
where roles.role_name like 'Senior%';

-- 15. ������� �������� Java �������������
select salary.monthly_salary, roles.role_name from employee_salary
left join salary on employee_salary.salary_id = salary.id 
right join roles on salary.id = roles.id 
where roles.role_name like '%Java developer';

-- 16. ������� �������� Python �������������
select salary.monthly_salary, roles.role_name from employee_salary
left join salary on employee_salary.salary_id = salary.id 
right join roles on salary.id = roles.id 
where roles.role_name like '%Python developer';

-- 17. ������� ����� � �������� Junior Python �������������
select employees.employee_name, salary.monthly_salary, roles.role_name from employee_salary
left join salary on employee_salary.salary_id = salary.id 
right join roles on salary.id = roles.id
join employees on roles.id = employees.id
where roles.role_name like'Junior Python developer';


-- 18. ������� ����� � �������� Middle JS �������������
select employees.employee_name, salary.monthly_salary, roles.role_name from employee_salary
left join salary on employee_salary.salary_id = salary.id 
right join roles on salary.id = roles.id
join employees on roles.id = employees.id
where roles.role_name like'Middle JavaScript developer';


-- 19. ������� ����� � �������� Senior Java �������������
select employees.employee_name, salary.monthly_salary, roles.role_name from employee_salary
left join salary on employee_salary.salary_id = salary.id 
right join roles on salary.id = roles.id
join employees on roles.id = employees.id
where roles.role_name like 'Senior Java developer';
select * from roles; 

-- 20. ������� �������� Junior QA ���������
select salary.monthly_salary, roles.role_name from employee_salary
join salary on employee_salary.salary_id = salary.id 
join roles on salary.id = roles.id
where roles.role_name like 'Junior%QA%';

-- 21. ������� ������� �������� ���� Junior ������������
select AVG(salary.monthly_salary) from employee_salary
left join salary on employee_salary.salary_id = salary.id 
right join roles on salary.id = roles.id
where roles.role_name like 'Junior%';

-- 22. ������� ����� ������� JS �������������
select SUM(salary.monthly_salary) from employee_salary
left join salary on employee_salary.salary_id = salary.id 
right join roles on salary.id = roles.id
where roles.role_name like '%JavaScript developer';

-- 23. ������� ����������� �� QA ���������
select MIN(salary.monthly_salary) from employee_salary
left join salary on employee_salary.salary_id = salary.id 
right join roles on salary.id = roles.id
where roles.role_name like '%QA engineer';

-- 24. ������� ������������ �� QA ���������
select MAX(salary.monthly_salary) from employee_salary
left join salary on employee_salary.salary_id = salary.id 
right join roles on salary.id = roles.id
where roles.role_name like '%QA engineer';

-- 25. ������� ���������� QA ���������
select count(employees.employee_name) from employee_salary
left join salary on employee_salary.salary_id = salary.id 
right join roles on salary.id = roles.id
join employees on roles.id = employees.id
where roles.role_name like '%QA engineer';

-- 26. ������� ���������� Middle ������������.
select count(employees.employee_name) from employee_salary
left join salary on employee_salary.salary_id = salary.id 
right join roles on salary.id = roles.id
join employees on roles.id = employees.id
where roles.role_name like 'Middle%';

-- 27. ������� ���������� �������������
select count(employees.employee_name) from employee_salary
left join salary on employee_salary.salary_id = salary.id 
right join roles on salary.id = roles.id
join employees on roles.id = employees.id
where roles.role_name like '%developer';

-- 28. ������� ���� (�����) �������� �������������.
select SUM(salary.monthly_salary) from employee_salary
left join salary on employee_salary.salary_id = salary.id 
right join roles on salary.id = roles.id
where roles.role_name like '%developer';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employees.employee_name, roles.role_name, salary.monthly_salary from employee_salary
join salary on employee_salary.salary_id = salary.id 
join roles on salary.id = roles.id
join employees on roles.id = employees.id 
order by salary.monthly_salary asc;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from employee_salary
join salary on employee_salary.salary_id = salary.id 
join roles on salary.id = roles.id
join employees on roles.id = employees.id
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary asc;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from employee_salary
join salary on employee_salary.salary_id = salary.id 
join roles on salary.id = roles.id
join employees on roles.id = employees.id
where salary.monthly_salary < 2300
order by salary.monthly_salary asc;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary.monthly_salary from employee_salary
join salary on employee_salary.salary_id = salary.id 
join roles on salary.id = roles.id
join employees on roles.id = employees.id
where salary.monthly_salary = 1100 or salary.monthly_salary = 1500 or salary.monthly_salary = 2000
order by salary.monthly_salary asc;
