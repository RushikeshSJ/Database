/*Self Join*/

Select * from employees;

/*Self Join */
select concat(m.firstName,' ' ,m.lastName) as manager,
concat(e.firstName,' ' ,e.lastName) as emp from employees m 
inner join employees e on m.employeeNumber=e.reportsTo;