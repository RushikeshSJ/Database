Create Table Employee(
EmpId int,
EmpName varchar(50),
primary key(EmpId)
);

Insert into Employee values(1,"Rushikesh");
Insert into EmployeeSalary values (1,30000);

select * from EmployeeSalary;

delete from Employee where EmpId=1;