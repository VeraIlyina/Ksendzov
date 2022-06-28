## SQL Домашняя работа №1 

-- 1. Вывести все поля и все строки.

      select * from students;

-- 2. Вывести всех студентов в таблице

      select name from students;

-- 3. Вывести только Id пользователей

      select id from students;

-- 4. Вывести только имя пользователей

      select  name from students;

-- 5. Вывести только email пользователей

      select  email from students;

-- 6. Вывести имя и email пользователей

      select name, email from students;

-- 7. Вывести id, имя, email и дату создания пользователей

      select id, name, email, created_on from students;

-- 8. Вывести пользователей где password 12333

      select * from students where password = '12333';
 
-- 9. Вывести пользователей которые были созданы 2021-03-26 00:00:00

      select * from students where created_on = '2021-03-26 00:00:00';

-- 10. Вывести пользователей где в имени есть слово Анна

      select * from students where name like 'Anna%';

-- 11. Вывести пользователей где в имени в конце есть 8

      select * from students where name like '%8';
 
-- 12. Вывести пользователей где в имени в есть буква а

      select * from students where name like '%a%';

 -- 13. Вывести пользователей которые были созданы 2021-07-12 00:00:00

      select * from students where created_on =  '2021-07-12 00:00:00';

-- 14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313

      select * from students where created_on =  '2021-07-12 00:00:00' and password = '1m313';

-- 15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey

      select * from students where created_on =  '2021-07-12 00:00:00' and name like '%Andrey%';

-- 16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8

      select * from students where created_on =  '2021-07-12 00:00:00' and name like '%8%';

-- 17. Вывести пользователя у которых id равен 112

      select * from students where id = '112';

-- 18. Вывести пользователя у которых id равен 153

      select * from students where id = '153';

-- 19. Вывести пользователя у которых id больше 140

      select * from students where id > 140;

-- 20. Вывести пользователя у которых id меньше 130

      select * from students where id < 130;

-- 21. Вывести пользователя у которых id меньше 127 или больше 188

      select * from students where id < 127 or id > 188; 

-- 22. Вывести пользователя у которых id меньше либо равно 137

      select * from students where id <= 137; 

-- 23. Вывести пользователя у которых id больше либо равно 137

      select * from students where id >= 137; 

-- 24. Вывести пользователя у которых id больше 180 но меньше 190

      select * from students where id > 180 and id < 190; 

-- 25. Вывести пользователя у которых id между 180 и 190

      select * from students where id between 180 and 190; 

-- 26. Вывести пользователей где password равен 12333, 1m313, 123313

      select * from students where password in ('12333','1m313','123313');

-- 27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00

      select * from students where created_on in ('2020-10-03 00:00:00','2021-05-19 00:00:00','2021-03-26 00:00:00');

-- 28. Вывести минимальный id 

      select min(id) from students;

-- 29. Вывести максимальный.

      select max(id) from students; 

-- 30. Вывести количество пользователей

      select count(id) from students; 

-- 31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.

      select id, name, created_on from students order by created_on asc;

-- 32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.

      select id, name, created_on from students order by created_on desc;


## SQL Домашняя работа №2

--1. Создать таблицу employees

-- id. serial,  primary key,

-- employee_name. Varchar(50), not null

--Наполнить таблицу employee 70 строками.


      create table employees (
      	id serial primary key,
      	employee_name varchar(50) not null
      )

      insert into employees (employee_name)
      	values 	('Kathy'),
			      
                    ('Shawn'),

                    ('Sandra'),

                    ('Pauline'),

                    ('Patricia'),

                    ('Christopher'),

                    ('Edward'),

                    ('Judith'),

                    ('Jennifer'),

                    ('Julie'),

                    ('Shirley'),

                    ('Kathy'),

                    ('Brandon'),

                    ('Dennis'),

                    ('Rene'),

                    ('Michael'),

                    ('Monica'),

                    ('Deborah'),

                    ('Gloria'),

                    ('Brian'),

                    ('Teresa'),

                    ('Stephanie'),

                    ('Lauren'),

                    ('Tracy'),

                    ('Virginia'),

                    ('Margaret'),

                    ('Thomas'),

                    ('William'),

                    ('Pamela'),

                    ('Norman'),

                    ('Rosa'),

                    ('Kenneth'),

                    ('Charles'),

                    ('Karen'),

                    ('Edward'),

                    ('Cindy'),

                    ('Lois'),

                    ('Michelle'),

                    ('Harold'),

                    ('Connie'),

                    ('Travis'),

                    ('Lillie'),

                    ('Phillip'),

                    ('Steven'),

                    ('Lori'),

                    ('Dawn'),

                    ('Philip'),

                    ('Chad'),

                    ('Peggy'),

                    ('Carol'),

                    ('Karen'),

                    ('Esther'),

                    ('Christine'),

                    ('Edward'),

                    ('Carol'),

                    ('Claude'),

                    ('Paul'),

                    ('Anna'),

                    ('Michael'),

                    ('Carlos'),

                    ('Donald'),

                    ('Jenny'),

                    ('Juan'),

                    ('Diane'),

                    ('Carmen'),

                    ('Brett'),

                    ('Beverly'),

                    ('Larry'),

                    ('John'),

                    ('Kimberly')


--2. Таблица salary

--Создать таблицу salary

-- id. Serial  primary key,

-- monthly_salary. Int, not null

--Наполнить таблицу salary 15 строками:


      create table salary (
       id serial primary key,
       monthly_salary int not null
      )

      insert into salary (monthly_salary)
       values 	(1000),

                    (1100),

                    (1200),

                    (1300),

                    (1400),

                    (1500),

                    (1600),

                    (1700),

                    (1800),

                    (1900),

                    (2000),

                    (2100),

                    (2200),

                    (2300),

                    (2400),

                    (2500);

	

--3. Создать таблицу employee_salary

-- id. Serial  primary key,

-- employee_id. Int, not null, unique

-- salary_id. Int, not null

--Наполнить таблицу employee_salary 40 строками:

-- в 10 строк из 40 вставить несуществующие employee_id

      create table employee_salary (
       id serial primary key,
       employee_id int unique not null,
       salary_id int not null
      )

      insert into employee_salary (employee_id, salary_id)
       values 	(3, 7),
                    
                    (1, 4),
                    
                    (5, 9),
                    
                    (40, 13),
                    
                    (23, 4),
                    
                    (11, 2),
                    
                    (52, 10),
                    
                    (15, 13),
                    
                    (26, 4),
                    
                    (16, 1),
                    
                    (33, 7),
                    
                    (60, 1),
                    
                    (61, 2),
                    
                    (62, 3),
                    
                    (63, 4),
                    
                    (64, 5),
                    
                    (65, 6),
                    
                    (66, 7),
                    
                    (67, 8),
                    
                    (68, 9),
                    
                    (69, 10),
                    
                    (70, 11),
                    
                    (71, 12),
                    
                    (72, 13),
                    
                    (73, 14),
                    
                    (74, 15),
                    
                    (75, 16),
                    
                    (76, 17),
                    
                    (77, 18),
                    
                    (78, 19),
                   
                    (79, 20),
                    
                    (80, 21),
                    
                    (81, 22),
                    
                    (82, 23),
                    
                    (83, 24),
                    
                    (84, 55),
                    
                    (85, 26),
                    
                    (86, 27),
                    
                    (87, 28),
                    
                    (88, 29);



--4. Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:


      create table roles (
       id serial primary key,
       role_name int unique not null
       )


      ALTER TABLE roles ALTER COLUMN role_name TYPE varchar(30);

      insert into roles (role_name)
      values  ('Junior Python developer'),
                   
                   ('Middle Python developer'),
                   
                   ('Senior Python developer'),
                   
                   ('Junior Java developer'),
                   
                   ('Middle Java developer'),
                   
                   ('Senior Java developer'),
                   
                   ('Junior JavaScript developer'),
                   
                   ('Middle JavaScript developer'),
                   
                   ('Senior JavaScript developer'),
                   
                   ('Junior Manual QA engineer'),
                   
                   ('Middle Manual QA engineer'),
                   
                   ('Senior Manual QA engineer'),
                   
                   ('Project Manager'),
                   
                   ('Designer'),
                   
                   ('HR'),
                   
                   ('CEO'),
                   
                   ('Sales manager'),
                   
                   ('Junior Automation QA engineer'),
                   
                   ('Middle Automation QA engineer'),
                   
                   ('Senior Automation QA engineer');



--5. Таблица roles_employee

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:

       create table roles_employee (
       id serial primary key,
       employee_id int unique not null,
       foreign key (employee_id)
        references employees(id),
       role_id int not null,
       foreign key (role_id)
        references roles(id)
       )



       insert into roles_employee (employee_id, role_id)
       values  (1, 3),
                    
                (35, 4),
                    
                (36, 5),
                    
                (37, 6),
                    
                (38, 7),
                    
                (39, 8),
                    
                (40, 9),
                    
                (41, 10),
                    
                (42, 11),
                    
                (43, 12),
                    
                (44, 13),
                    
                (45, 14),
                    
                (46, 15),
                    
                (7, 2),
                    
                (2, 4),
                    
                (3, 9),
                    
                (5, 13),
                
                (23, 4),
                    
                (11, 2),
                    
                (10, 9),
                    
                (22, 13),
                    
                (21, 3),
                    
                (34, 4),
                    
                (6, 7),
                    
                (4, 9),
                    
                (13, 20),
                    
                (20, 1),
                    
                (31, 2),
                    
                (9, 2),
                    
                (12, 2),
                    
                (15, 2),
                    
                (26, 2),
                    
                (27, 2),
                    
                (28, 2),
                    
                (29, 3),
                    
                (30, 9),
                
                (8, 13),
                    
                (32, 4),
                    
                (33, 2),
                    
                (47, 16);




## SQL Домашняя работа №3

-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

      select employee_name, monthly_salary from employees
      join salary on employees.id = salary.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.

      select employee_name, monthly_salary from employees
      join salary on employees.id = salary.id
      where monthly_salary  < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

      select employees.employee_name, salary.monthly_salary from employee_salary
      left join employees on employee_salary.employee_id = employees.id
      right join salary on employees.id = salary.id
      where employees.employee_name is null;


-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

      select employees.employee_name, salary.monthly_salary from employee_salary
      left join employees on employee_salary.employee_id = employees.id
      right join salary on employees.id = salary.id
      where salary.monthly_salary < 2000 and employees.employee_name is null;


-- 5. Найти всех работников кому не начислена ЗП.

      select employees.employee_name, salary.monthly_salary from employee_salary
      left join salary on employee_salary.employee_id = salary.id 
      join employees on employee_salary.employee_id = employees.id
      where salary.monthly_salary is null;

-- 6. Вывести всех работников с названиями их должности.

      select employee_name, roles.role_name from employees
      join roles on employees.id = roles.id;

-- 7. Вывести имена и должность только Java разработчиков.

      select employee_name, roles.role_name from employees
      join roles on employees.id = roles.id
      where roles.role_name like '%Java developer';

-- 8. Вывести имена и должность только Python разработчиков.

      select employee_name, roles.role_name from employees
      join roles on employees.id = roles.id
      where roles.role_name like '%Python developer';

-- 9. Вывести имена и должность всех QA инженеров.

      select employee_name, roles.role_name from employees
      join roles on employees.id = roles.id
      where roles.role_name like '%QA engineer';

-- 10. Вывести имена и должность ручных QA инженеров.

      select employee_name, roles.role_name from employees
      join roles on employees.id = roles.id
      where roles.role_name like '%Manual QA engineer';

-- 11. Вывести имена и должность автоматизаторов QA

      select employee_name, roles.role_name from employees
      join roles on employees.id = roles.id
      where roles.role_name like '%Automation QA engineer';

-- 12. Вывести имена и зарплаты Junior специалистов

      select employee_name, roles.role_name from employees
      join roles on employees.id = roles.id
      where roles.role_name like 'Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов

      select employee_name, roles.role_name from employees
      join roles on employees.id = roles.id
      where roles.role_name like 'Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов

      select employee_name, roles.role_name from employees
      join roles on employees.id = roles.id
      where roles.role_name like 'Senior%';

-- 15. Вывести зарплаты Java разработчиков

      select salary.monthly_salary, roles.role_name from employee_salary
      left join salary on employee_salary.salary_id = salary.id 
      right join roles on salary.id = roles.id 
      where roles.role_name like '%Java developer';

-- 16. Вывести зарплаты Python разработчиков

      select salary.monthly_salary, roles.role_name from employee_salary
      left join salary on employee_salary.salary_id = salary.id 
      right join roles on salary.id = roles.id 
      where roles.role_name like '%Python developer';

-- 17. Вывести имена и зарплаты Junior Python разработчиков

      select employees.employee_name, salary.monthly_salary, roles.role_name from employee_salary
      left join salary on employee_salary.salary_id = salary.id 
      right join roles on salary.id = roles.id
      join employees on roles.id = employees.id
      where roles.role_name like'Junior Python developer';


-- 18. Вывести имена и зарплаты Middle JS разработчиков

       select employees.employee_name, salary.monthly_salary, roles.role_name from employee_salary
       left join salary on employee_salary.salary_id = salary.id 
       right join roles on salary.id = roles.id
       join employees on roles.id = employees.id
       where roles.role_name like'Middle JavaScript developer';


-- 19. Вывести имена и зарплаты Senior Java разработчиков

       select employees.employee_name, salary.monthly_salary, roles.role_name from employee_salary
       left join salary on employee_salary.salary_id = salary.id 
       right join roles on salary.id = roles.id
       join employees on roles.id = employees.id
       where roles.role_name like 'Senior Java developer';
       select * from roles; 

-- 20. Вывести зарплаты Junior QA инженеров

       select salary.monthly_salary, roles.role_name from employee_salary
       join salary on employee_salary.salary_id = salary.id 
       join roles on salary.id = roles.id
       where roles.role_name like 'Junior%QA%';

-- 21. Вывести среднюю зарплату всех Junior специалистов

       select AVG(salary.monthly_salary) from employee_salary
       left join salary on employee_salary.salary_id = salary.id 
       right join roles on salary.id = roles.id
       where roles.role_name like 'Junior%';

-- 22. Вывести сумму зарплат JS разработчиков

       select SUM(salary.monthly_salary) from employee_salary
       left join salary on employee_salary.salary_id = salary.id 
       right join roles on salary.id = roles.id
       where roles.role_name like '%JavaScript developer';

-- 23. Вывести минимальную ЗП QA инженеров

       select MIN(salary.monthly_salary) from employee_salary
       left join salary on employee_salary.salary_id = salary.id 
       right join roles on salary.id = roles.id
       where roles.role_name like '%QA engineer';

-- 24. Вывести максимальную ЗП QA инженеров

       select MAX(salary.monthly_salary) from employee_salary
       left join salary on employee_salary.salary_id = salary.id 
       right join roles on salary.id = roles.id
       where roles.role_name like '%QA engineer';

-- 25. Вывести количество QA инженеров

      select count(employees.employee_name) from employee_salary
      left join salary on employee_salary.salary_id = salary.id 
      right join roles on salary.id = roles.id
      join employees on roles.id = employees.id
      where roles.role_name like '%QA engineer';

-- 26. Вывести количество Middle специалистов.

      select count(employees.employee_name) from employee_salary
      left join salary on employee_salary.salary_id = salary.id 
      right join roles on salary.id = roles.id
      join employees on roles.id = employees.id
      where roles.role_name like 'Middle%';

-- 27. Вывести количество разработчиков

      select count(employees.employee_name) from employee_salary
      left join salary on employee_salary.salary_id = salary.id 
      right join roles on salary.id = roles.id
      join employees on roles.id = employees.id
      where roles.role_name like '%developer';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.

      select SUM(salary.monthly_salary) from employee_salary
      left join salary on employee_salary.salary_id = salary.id 
      right join roles on salary.id = roles.id
      where roles.role_name like '%developer';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию

      select employees.employee_name, roles.role_name, salary.monthly_salary from employee_salary
      join salary on employee_salary.salary_id = salary.id 
      join roles on salary.id = roles.id
      join employees on roles.id = employees.id 
      order by salary.monthly_salary asc;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

      select employees.employee_name, roles.role_name, salary.monthly_salary from employee_salary
      join salary on employee_salary.salary_id = salary.id 
      join roles on salary.id = roles.id
      join employees on roles.id = employees.id
      where salary.monthly_salary between 1700 and 2300
      order by salary.monthly_salary asc;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

      select employees.employee_name, roles.role_name, salary.monthly_salary from employee_salary
      join salary on employee_salary.salary_id = salary.id 
      join roles on salary.id = roles.id
      join employees on roles.id = employees.id
      where salary.monthly_salary < 2300
      order by salary.monthly_salary asc;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

      select employees.employee_name, roles.role_name, salary.monthly_salary from employee_salary
      join salary on employee_salary.salary_id = salary.id 
      join roles on salary.id = roles.id
      join employees on roles.id = employees.id
      where salary.monthly_salary in (1100, 1500, 2000)
      order by salary.monthly_salary asc;
