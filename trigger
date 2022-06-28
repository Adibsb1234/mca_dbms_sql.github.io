CREATE TABLE EmployeeRecord (
id number(5) ,
name varchar2(15) ,
city varchar2(10) ,
 salary number(5) 
) ;

CREATE table EmployeeAudit (
id number(5) , 
name varchar2(15) ,
city varchar2(10) ,
salary number(5) 
 ) ;
INSERT INTO EmployeeRecord VALUES(1001 , 'Joseph chacha' , 'New Jersy' , 1500) ;  
INSERT INTO EmployeeRecord VALUES(1002 , 'Andrew Chacha' , 'New York' , 2500) ; 
INSERT INTO EmployeeRecord VALUES(1003 , 'Joe Root' , 'Bermingham' , 2500) ; 
INSERT INTO EmployeeRecord VALUES(1004 , 'Trent Boult' , 'New Zeland' , 2000) ; 
INSERT INTO EmployeeRecord VALUES(1005 , 'Adam Jampa' , 'Sydeny' , 1000) ; 
CREATE OR REPLACE TRIGGER EmployeeTrigger after DELETE ON EmployeeRecord
FOR EACH ROW 
BEGIN 
INSERT INTO EmployeeAudit values(:old.id , :old.name , :old.city , :old.salary );
dbms_output.put_line('Trigger Running');
END ;

DELETE FROM EmployeeRecord WHERE id = 1001 ;


SELECT * from EmployeeAudit ;
	
