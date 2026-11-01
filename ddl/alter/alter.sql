/*
Alter syntax

1. ALTER TABLE table_name ADD column_name datatype [constraint]
2. ALTER TABLE table_name ALTER COLUMN column_name new_datatype [NULL | NOT NULL]
3. ALTER TABLE table_name DROP COLUMN column_name
4. ALTER TABLE table_name ADD CONSTRAINT constraint_name [constraint_defination]
5. ALTER TABLE table_name DROP CONSTRAINT constraint_name
*/

use CompanyDB;

alter table employee add email varchar(30);
alter table employee alter column email varchar(100);
alter table employee drop column email;
alter table employee add constraint fk_emp foreign key (deptid) references department(deptid);
alter table employee drop constraint fk_emp;
exec sp_rename 'Employee.City', 'empcity', 'column';
exec sp_rename 'Employee.empcity', 'City', 'column';
