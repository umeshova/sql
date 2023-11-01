#1.Вывести hire_date в годах, и количество сотрудников, которых наняли в эти года#
Select year(hire_date), count(emp_no) from employees
group by year(hire_date);

#2.Вывести dept_no и рядом количество сотрудников, которые когда-либо работали в этих департаментах#
Select dept_no, count(emp_no) from employees.dept_emp
group by dept_no;

#3.Вывести birth_date и количество сотрудников, которые родились в эти дни. Отфильтровать birth_date не равен 1952-02-13 и 
#вывести только те дни, где количество сотрудников > 60. 
#Отсортировать по убыванию (по количеству сотрудников), и далее показать только топ 20 birth_date (по количеству сотрудников)#
Select birth_date, count(emp_no) from employees
where birth_date <>1952-02-13
group by birth_date
having count(emp_no)>60
order by birth_date desc
limit 20;

#4.Вывести имена (которые начинается на А) и количество сотрудников с этим именем в компании. Отфильтровать имена, 
#у которых количество сотрудников с этим именем больше 250, отсортировать по количеству сотрудников и 
#показать только топ 10 first_name (по количеству сотрудников)#
Select first_name,count(emp_no) from employees
where first_name like 'A%'
group by first_name
having count(first_name)>250
order by count(emp_no)
limit 10;
#5.Создать копию таблицы employees, где имена начинается на B. Удалить строки в employees, 
#где имена начинаются на B, далее из копии нашей таблицы вставить обратно эти строки. 
#Удалить все строки из копии нашей таблицы, далее дропнуть эту таблицу.)#
create table employees_2 like employees;
select * from employees_2;
insert into employees_2
select * from employees
where first_name like'B%';
delete from employees
where first_name like 'B%';
select *from employees;
insert into employees
select * from employees_2
where first_name like'B%';
delete from employees_2;
drop table employees_2;