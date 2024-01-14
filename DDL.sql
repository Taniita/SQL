Таблица employees

Создать таблицу employees :
- id. serial, primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.

	
create table employees(
    id serial primary key,
    employee_name varchar (50) not null
);

select * from employees;

insert into employees(employee_name)
values ('John'),
       ('Emma'),
       ('John'),
       ('David'),
       ('Laura'),
       ('Michael'),
       ('Sarah'),
       ('Tom'),
       ('James'),
       ('Emily'),
       ('Harper'),
       ('Avery'),
       ('Evelyn'),
       ('Scarlett'),
       ('Amelia'),
       ('Charlotte'),
       ('Mia'),
       ('Olivia'),
       ('Sophia'),
       ('Margaret'),	
       ('Mary'),
	   ('Samantha'),	
	   ('Patricia'),
	   ('Isla'),
	   ('Bethany'),
	   ('Sophia'),
	   ('Jennifer'),
	   ('Emily'),	
	   ('Elizabeth'),
	   ('Isabella'),
       ('Poppy'),
       ('Linda'),
	   ('Ava'),
	   ('Megan'),
	   ('Barbar'),
	   ('Victoria'),
	   ('Susan'),
	   ('Jessica'),	
	   ('Lauren'),	
	   ('Abigail'),
	   ('Lily'),
	   ('Michelle'),
	   ('Madison'),
	   ('Jessica'),
       ('Sophie'),	
       ('Tracy'),	
       ('Charlotte'),
       ('Smith'),
       ('Murphy'),
       ('Jones'),
       ('Kelly'),	
       ('Johnson'),
       ('Sullivan'),	
       ('Williams'),
       ('Brown'),
       ('Taylor'),
       ('Jones'),
       ('Davies'),
       ('Brien'),	
       ('Miller'),
       ('Wilson'),
	   ('Byrne'),
	   ('Davis'),
       ('Evans'),
       ('Garcia'),
       ('Thomas'),
       ('Connor'),
       ('Rodriguez'),
       ('Roberts'),
       ('Neill');	

      





Таблица salary

Создать таблицу salary :
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500


create table salary(
    id serial primary key,
    monthly_salary int not null
);
 select * from salary;

insert into salary(monthly_salary)
values (1000),
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







Таблица employee_salary

Создать таблицу employee_salary :
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id
id                      employee_id                         salary_id
1                            3                                   7
2                            1                                   4
3                            5                                   9
4                            40                                  13
5                            23                                  4
6                            11                                  2
7                            52                                  10
8                            15                                  13
9                            26                                  4
10                           16                                  1
11                           33                                  7
...                          ...                                 ...



create table employee_salary(
    id serial primary key,
    employee_id int not null unique,
    salary_id int not null
);

select * from employee_salary;

insert into employee_salary(employee_id, salary_id)
values (1, 5),
       (2, 15),
       (3, 1),
       (4, 8),
       (5, 4),
       (6, 9),
       (7, 13),
       (8, 10),
       (9, 2),
       (10, 3),
       (11, 6),
       (12, 11),
       (13, 7),
       (14, 12),
       (15, 14),
       (16, 16),
       (17, 5),
       (18, 9),
       (19, 13),
       (20, 1),
       (21, 8),
       (22, 16),
       (23, 2),
       (24, 7),
       (26, 9),
       (27, 12),
       (28, 4),
       (29, 10);

       
insert into employee_salary(employee_id, salary_id)
values (71, 1),
       (72, 8),
       (73, 12),
       (74, 16),
       (75, 11),
       (76, 5),
       (77, 9),
       (78, 2),
       (79, 15),
       (80, 2);
      
      




Таблица roles

Создать таблицу roles :
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:

id                            role_name
1                       Junior Python developer
2                       Middle Python developer
3                       Senior Python developer
4                       Junior Java developer
5                       Middle Java developer
6                       Senior Java developer
7                       Junior JavaScript developer
8                       Middle JavaScript developer
9                       Senior JavaScript developer
10                      Junior Manual QA engineer
11                      Middle Manual QA engineer
12                      Senior Manual QA engineer
13                      Project Manager
14                      Designer
15                      HR
16                      CEO
17	                Sales manager
18                      Junior Automation QA engineer
19                      Middle Automation QA engineer
20                      Senior Automation QA engineer


      
create table roles(
    id serial primary key,
    role_name int not null unique
);
      
select * from roles;

alter table roles
alter column role_name type varchar(30);

insert into roles(role_name)
values ('Junior_Python_developer'),
       ('Middle_Python_developer'),
       ('Senior_Python_developer'),
       ('Junior_Java_developer'),
       ('Middle_Java_developer'),
       ('Senior_Java_developer'),
       ('Junior_JavaScript_developer'),
       ('Middle_JavaScript_developer'),
       ('Senior_JavaScript_developer'),
       ('Junior_Manual_QA_engineer'),
       ('Middle_Manual_QA_engineer'),
       ('Senior_Manual_QA_engineer'),
       ('Project_Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales_manager'),
       ('Junior_Automation_QA_engineer'),
       ('Middle_Automation_QA_engineer'),
       ('Senior_Automation_QA_engineer');
      






Таблица roles_employee

Создать таблицу roles_employee :
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:

id                          employee_id                          role_id
1                                7                                   2
2                                20                                  4
3                                3                                   9
4                                5                                   13
5                                23                                  4
6                                11                                  2
7                                10                                  9
8                                22                                  13
9                                21                                  3
10                               34                                  4
11                               6                                   7
...                              ...                                 ...


create table roles_employee(
    id serial primary key,
    employee_id int not null unique,
    role_id int not null,
    FOREIGN KEY(employee_id)
         references employees(id),
    FOREIGN KEY(role_id)
         references roles(id)  
);

select * from roles_employee;

insert into roles_employee(employee_id, role_id)
values (1, 5),
       (2, 15),
       (3, 1),
       (4, 8),
       (5, 4),
       (6, 9),
       (7, 13),
       (8, 10),
       (9, 20),
       (10, 3),
       (11, 6),
       (12, 11),
       (13, 7),
       (14, 12),
       (15, 14),
       (16, 16),
       (17, 5),
       (18, 9),
       (19, 13),
       (20, 20),
       (21, 18),
       (22, 16),
       (23, 12),
       (24, 17),
       (25, 11),
       (26, 9),
       (27, 12),
       (28, 4),
       (29, 10),
       (30, 6),
       (31, 2),
       (32, 18),
       (33, 12),
       (34, 16),
       (35, 11),
       (36, 5),
       (37, 19),
       (38, 2),
       (39, 15),
       (40, 2);

