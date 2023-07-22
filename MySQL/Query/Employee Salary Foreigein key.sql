Create Table EmployeeSalary(
EmpId int,
EmpSalary int,
foreign key (EmpId) references Employee(EmpId) 
);