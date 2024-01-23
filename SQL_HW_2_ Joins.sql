-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами:

select employee_name, monthly_salary from employee_salary
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id;

-- 2. Вывести всех работников у которых ЗП меньше 2000 :

select employee_name, monthly_salary from employee_salary
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен (ЗП есть, но не понятно кто её получает) :

select monthly_salary from salary
left join employee_salary on employee_salary.salary_id = salary.id 
where employee_salary.id is null;

-- 4. Вывести все зарплатные позиции меньше 2000, но работник по ним не назначен (ЗП есть, но не понятно кто её получает) :

select employee_name, monthly_salary from employee_salary
left join employees on employee_salary.employee_id = employees.id 
left join salary on employee_salary.salary_id = salary.id
where employee_name is null and monthly_salary < 2000;

-- 5. Найти всех работников кому не начислена ЗП :

select employee_name, monthly_salary from employee_salary
full join employees on employee_salary.employee_id = employees.id 
full join salary on employee_salary.salary_id = salary.id
where monthly_salary is null;

-- 6. Вывести всех работников с названиями их должности :

select employee_name, role_name from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
order by role_name;

-- 7. Вывести имена и должность только Java разработчиков :
select employee_name, role_name from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like ('%Java_developer')
order by role_name;

-- 8. Вывести имена и должность только Python разработчиков :
select employee_name, role_name from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like ('%Python_developer')
order by role_name;

-- 9. Вывести имена и должность всех QA инженеров :

select employee_name, role_name from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like ('%QA%')
order by role_name;

-- 10. Вывести имена и должность ручных QA инженеров :

select employee_name, role_name from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like ('%Manual_QA%')
order by role_name;

-- 11. Вывести имена и должность автоматизаторов QA :

select employee_name, role_name from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like ('%Automation%')
order by role_name;

-- 12. Вывести имена и зарплаты Junior специалистов :

select employee_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов :

select employee_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов :

select employee_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков :

select monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Java_developer%';

-- 16. Вывести зарплаты Python разработчиков :

select monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Python_developer%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков :

select employee_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior_Python%';

-- 18. Вывести имена и зарплаты Middle JS разработчиков :

select employee_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name = 'Middle_Java_developer';

-- 19. Вывести имена и зарплаты Senior Java разработчиков :

select employee_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name = 'Senior_Java_developer';

-- 20. Вывести зарплаты Junior QA инженеров :

select monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like 'Junior%engineer';

-- 21. Вывести среднюю зарплату всех Junior специалистов :

select sum(monthly_salary)/count(role_name) average_jun_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков :

select sum(monthly_salary) sum_salary_JS_dev from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaScript_developer';

-- 23. Вывести минимальную ЗП QA инженеров :

select min(monthly_salary) min_salary_QA from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%engineer';

-- 24. Вывести максимальную ЗП QA инженеров :

select max(monthly_salary) max_salary_QA from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%engineer';

-- 25. Вывести количество QA инженеров :

select count(employee_name) amount_QA from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%engineer';

-- 26. Вывести количество Middle специалистов :

select count(employee_name) amount_middle from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%';

-- 27. Вывести количество разработчиков :

select count(employee_name) amount_dev from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков :

select sum(monthly_salary) sum_salary_dev from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию :

select employee_name, role_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
order by monthly_salary asc;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300 :

select employee_name, role_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300 :

select employee_name, role_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2300
order by monthly_salary asc;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000 :

select employee_name, role_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;

