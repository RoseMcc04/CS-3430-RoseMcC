select database();
use mccormacksa;
drop table if exists GRADE_REPORT;
drop table if exists PREREQUISITE;
drop table if exists SECTION;
drop table if exists COURSE;
drop table if exists STUDENT;
create table STUDENT (
	Name VARCHAR(100) NOT NULL, 
    Student_number INT primary key, 
    Class INT, 
    Major VARCHAR(100)
);
create table COURSE (
	Course_number INT primary key, 
    Course_name VARCHAR(100) UNIQUE, 
    Credit_hours INT NOT NULL DEFAULT 4, 
    Department VARCHAR(100) NOT NULL
);
create table SECTION (
	Section_identifier INT primary key, 
    Course_number INT, 
    foreign key (Course_number) references COURSE (Course_number), 
    Semester VARCHAR(6) NOT NULL, 
    Year INT NOT NULL, 
    Instructor VARCHAR(100)
);
create table GRADE_REPORT (
	Student_number INT, 
    Section_identifier INT, 
	foreign key (Student_number) references STUDENT (Student_number), 
    foreign key (Section_identifier) references SECTION (Section_identifier), 
    Grade CHAR(1), 
    primary key (Student_number, Section_identifier)
);
create table PREREQUISITE (
	Course_number INT, 
    Prerequisite_number INT, 
	foreign key (Course_number) references COURSE (Course_number), 
    foreign key (Prerequisite_number) references COURSE (Course_number), 
    primary key (Course_number, Prerequisite_number)
);
desc PREREQUISITE;