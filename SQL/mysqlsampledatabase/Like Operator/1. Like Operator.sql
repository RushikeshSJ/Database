/*Like Operator*/

select * from employees;

/*1. Find employees whose first name starts with “a”*/
select * from employees where firstName like 'a%';

/*2. Find employees whose last name ends “on”*/
select * from employees where lastName like '%on';

/*3. Find employees whose last name contains “on”*/
SELECT * from employees where lastName like '%on%';

/*4. Find employees whose first name like “Tim” , “Tom” etc*/
Select * from employees where firstName like "%Tim%" or firstName like "%Tom%";

/*5. Find employees whose last names don’t start with the letter B*/
select * from employees where lastName not like "b%";