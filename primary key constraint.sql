CREATE TABLE ExampleTable(
id number(3) PRIMARY KEY,
Fname varchar2(30) NOT NULL ,
Lname varchar2(30) NOT NULL ,
passport_Number number(10) UNIQUE,
email varchar2(15) UNIQUE,
);
