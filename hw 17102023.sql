#вывести все таблицы#
Select * from employees;
#вывести всех мужчин#
Select * from employees
WHERE gender = "M";
#вывести всех ELVIS#
Select * from employees
WHERE first_name = "Elvis";
#вывести уникальные названия должностей#
Select distinct title from employees.titles;
#кто был трудоустроен в 2000г#
Select emp_no from employees.employees
WHERE hire_date = 2000;
#кому больше 60 лет#
Select curdate() > 60;
#кол-во строк в salaries#
Select count(*) from salaries;
#кол-во строк в salaries, где зарплата > 100.000$#
Select count(*) from salaries
where salary > 100000;