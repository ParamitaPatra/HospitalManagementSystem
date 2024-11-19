-- Database Creation 
drop database hospitalmanagement;

use hospitalmanagement;

-- TABLE CREATION
create table patients(id int auto_increment primary key, name varchar(255) not null , age int not null , gender varchar(10) not null);
create table doctors(id int auto_increment primary key, name varchar(255) not null , specialization varchar(255) not null);
create table appointments(id int auto_increment primary key, patient_id int not null, doctor_id int not null, appointment_date date not null , foreign key(patient_id) references patients(id) , foreign key (doctor_id) references doctors(id)) ;

-- SHOW THE TABLE FORMS
select * from patients;
select * from doctors;
select * from appointments;

-- INSERT DATA INTO TABLE
insert into Doctors(name , specialization) values("Pankaj Jain", "Physician");
insert into Doctors(name , specialization) values("Marshit Anad", "NeuroSurgent");
insert into Doctors(name , specialization) values("Sumit Ghosh", "Oncologist");
insert into Doctors(name , specialization) values("Atanu Saha", "Dermatology");
insert into Doctors(name , specialization) values("Kunal Das", "Cardiologist");
insert into Doctors(name , specialization) values("Priya Roy", "Allergist");
insert into Doctors(name , specialization) values("Laksh Dey", "Pediatrician");
insert into Doctors(name , specialization) values("Supriya Mukherjee", "Gastroenterologist");
insert into Doctors(name , specialization) values("Souvik Sana", "Endocrinologist");