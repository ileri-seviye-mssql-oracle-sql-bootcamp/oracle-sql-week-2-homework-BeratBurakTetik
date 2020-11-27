drop table "Departments"
drop table "Instructors"
drop table "Faculties"

 CREATE TABLE "EDUCATION"."Faculties"
  (
    "faculty_id" NUMBER PRIMARY KEY,
    "faculty_name" VARCHAR2(50),
    "faculty_code" VARCHAR2(5),
    "faculty_building"  VARCHAR2(30),
    "opening_date" DATE
  );
  
   CREATE TABLE "Departments"
  (
    "department_id" NUMBER PRIMARY KEY,
    "department_name" VARCHAR2(50),
    "department_code" VARCHAR2(5),
    "department_building"  VARCHAR2(30),
    "faculty_id" NUMBER,
        CONSTRAINT fk_departments_faculties FOREIGN KEY( "faculty_id" )
      REFERENCES "EDUCATION"."Faculties"( "faculty_id" ) 
  );
  

CREATE TABLE "Instructors"
  (
    "instructor_id" NUMBER PRIMARY KEY,
    "instructor_firstname" VARCHAR2(20),
    "instructor_lastname" VARCHAR2(20),
    "birthdate" DATE,
    "email" VARCHAR2(50),
    "department_id" NUMBER,
    CONSTRAINT fk_instructors_departments FOREIGN KEY( "department_id" )
      REFERENCES EDUCATION."Departments"( "department_id" ) 
  );
  
 Insert into EDUCATION."Faculties"(
 "faculty_id",
    "faculty_name",
    "faculty_code" ,
    "faculty_building",
    "opening_date") values (1,'Education Faculty','EDU','KB','12/01/1995');
    
    Insert into EDUCATION."Faculties"(
    "faculty_id",
    "faculty_name",
    "faculty_code" ,
    "faculty_building",
    "opening_date") values (2,'Engineering Faculty','ENG','NB','15/09/1998');
    
    Insert into EDUCATION."Faculties"(
    "faculty_id",
    "faculty_name",
    "faculty_code" ,
    "faculty_building",
    "opening_date") values (3,'Social Sciences Faculty','SSC','NH','04/01/2002');
 
    Insert into EDUCATION."Departments"(
    "department_id" ,
    "department_name" ,
    "department_code" ,
    "department_building" ,
    "faculty_id")
         values (1,'Computer Education','CET','ETA','1');
         
     Insert into EDUCATION."Departments"(
    "department_id" ,
    "department_name" ,
    "department_code" ,
    "department_building" ,
    "faculty_id")
         values (2,'Computer Engineering','CMPE','ETB','2');
         
        Insert into EDUCATION."Departments"(
    "department_id" ,
    "department_name" ,
    "department_code" ,
    "department_building" ,
    "faculty_id")
         values (3,'Sociology','SOC','NB','3');
        
   Insert into EDUCATION."Instructors"(
    "instructor_id" ,
    "instructor_firstname" ,
    "instructor_lastname" ,
    "birthdate" ,
    "email" ,
    "department_id"
   )
         values (1,'Berat','Tetik','17/08/1995','beratburaktetik@gmail.com',1);
         
            Insert into EDUCATION."Instructors"(
    "instructor_id" ,
    "instructor_firstname" ,
    "instructor_lastname" ,
    "birthdate" ,
    "email" ,
    "department_id"
   )
         values (2,'Ahmet','Yýlmaz','25/06/1992','ahmetyilmaz@gmail.com',2);
            
            Insert into EDUCATION."Instructors"(
    "instructor_id" ,
    "instructor_firstname" ,
    "instructor_lastname" ,
    "birthdate" ,
    "email" ,
    "department_id"
   )
         values (3,'Ayþe','Öztürk','04/09/1991','ayseozturk@gmail.com',3);
         
CREATE SYNONYM syn_departments for Departments

CREATE VIEW view_instructors as 
select "Instructors"."instructor_firstname","Instructors"."instructor_lastname","Departments"."department_name"
from "Departments", "Instructors"
where "Departments"."department_id"="Instructors"."department_id"
