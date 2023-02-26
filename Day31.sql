/*creating database -> UC1*/
create database payroll_service;

/*using database -> UC1*/
use payroll_service;

/*creating table -> UC2*/
create table employee_payroll(
id int not null auto_increment,
name varchar(30) not null ,
salary double not null,
start date not null,
primary key(id)
);

use mysql;
show tables;
desc  employee_payroll;

/*inserting values into the table -> UC3*/
insert into employee_payroll(name,salary,start)
values("Sarvesh",6000000.0,'2022-08-22'),
("Prathamesh",8000000.0,'2022-09-11'),
("Rutik",7000000.0,'2022-09-13'),
("Vaibhav",6000000.0,'2022-07-21');

/*retrieve all the employee_payroll data -> UC4*/
select* from  employee_payroll;

/*retrieve salary data for a particular employee -> UC5*/
select salary from employee_payroll where start between cast('2022-09-13' as date) and date(now()) and name="Rutik"; 

insert into employee_payroll(name,salary,start)
values ("mahi",6100000.0,'2022-07-15'),
("sreeja",8000000.0,'2022-07-12');

/* UC6*/
alter table employee_payroll add gender char(1);
/* UC6 */
update employee_payroll set gender='M' where name="Rutik" or name="Vaibhav";
update employee_payroll set gender='M' where name="Sarvesh" or name="Prathamesh";
update employee_payroll set gender='F' where name="mahi" or name="sreeja";

/* UC7*/
SELECT SUM(salary) FROM employee_payroll
WHERE gender = 'F' GROUP BY gender;
SELECT SUM(salary) FROM employee_payroll
WHERE gender = 'M' GROUP BY gender;

/* UC7*/

SELECT avg(salary) FROM employee_payroll
WHERE gender = 'F' GROUP BY gender;
SELECT avg(salary) FROM employee_payroll
WHERE gender = 'M' GROUP BY gender;

/* UC7*/

SELECT min(salary) FROM employee_payroll
WHERE gender = 'F' GROUP BY gender;
SELECT min(salary) FROM employee_payroll
WHERE gender = 'M' GROUP BY gender;

/* UC7*/

SELECT max(salary) FROM employee_payroll
WHERE gender = 'F' GROUP BY gender;
SELECT max(salary) FROM employee_payroll
WHERE gender = 'M' GROUP BY gender;

/* UC7*/

SELECT count(salary) FROM employee_payroll
WHERE gender = 'F' GROUP BY gender;
SELECT count(salary) FROM employee_payroll
WHERE gender = 'M' GROUP BY gender;

select * from employee_payroll;




