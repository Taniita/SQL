
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

