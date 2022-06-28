
--������� ������� employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
--��������� ������� employee 70 ��������.

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

--====================================================================================================================

--������� salary

--������� ������� salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
--��������� ������� salary 15 ��������:

-- 1000
-- 1100
-- 1200
-- 1300
-- 1400
-- 1500
-- 1600
-- 1700
-- 1800
-- 1900
-- 2000
-- 2100
-- 2200
-- 2300
-- 2400
-- 2500

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

	select * from salary 
	--=======================================================================================================
--������� ������� employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
--��������� ������� employee_salary 40 ��������:
-- � 10 ����� �� 40 �������� �������������� employee_id

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

--====================================================================================================================================	

--������� ������� roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
--�������� ��� ������ role_name � int �� varchar(30)
--��������� ������� roles 20 ��������:


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


--=====================================================================================================


--������� roles_employee

--������� ������� roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
-- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
--��������� ������� roles_employee 40 ��������:

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


