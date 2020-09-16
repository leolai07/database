-- IT 220
-- Leo Lai

-- drop database if exists acu;
-- create database acu;
-- use acu;


drop table if exists section_teacher, student_section, course, teacher, section, sudent;

--
create table student (id int primary key, first_name varchar(55), last_name varchar(55));
insert into student (id, first_name, last_name) values (000481289, 'Cole', 'Spears');
insert into student (id, first_name, last_name) values (000231353, 'Connor', 'Smith');
insert into student (id, first_name, last_name) values (000234952, 'Virginia', 'Pettit');
insert into student (id, first_name, last_name) values (000459023, 'Seth', 'Myers');
insert into student (id, first_name, last_name) values (000494024, 'Blinkendorf', 'Ganon');
insert into student (id, first_name, last_name) values (000444444, 'Ross', 'Spears');
insert into student (id, first_name, last_name) values (000434523, 'Troy', 'Spears');

--
create table section (crn int primary key, title text, day text, time int, semester text, location text);
insert into section (crn, title, day, time, semester, location) values (10123, 'Databases_01', 'MTWR', 1300, 'Summer_1', 'MBB_314');
insert into section (crn, title, day, time, semester, location) values (10134, 'Programming_01', 'MWF', 900, 'Fall', 'MBB_310');
insert into section (crn, title, day, time, semester, location) values (10145, 'Programming_02', 'MWF', 900, 'Spring', 'MBB_216');
insert into section (crn, title, day, time, semester, location) values (10147, 'Networking_1', 'TR', 900, 'Spring', 'MBB_310');
insert into section (crn, title, day, time, semester, location) values (10149, 'Discrete_Math', 'MWF', 1000, 'Spring', 'ADM_317');
insert into section (crn, title, day, time, semester, location) values (10150, 'Bible_02', 'TR', 1300, 'Spring', 'MBB_201');

--
create table student_section ( student_id int, crn_id int, grade varchar(3) , primary key(student_id, crn_id));
insert into student_section (student_id, crn_id, grade) values ( 000481289, 10123, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000481289, 10134, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000481289, 10145, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000481289, 10147, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000481289, 10149, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000481289, 10150, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000231353, 10123, 'F');
insert into student_section (student_id, crn_id, grade) values ( 000231353, 10134, 'F');
insert into student_section (student_id, crn_id, grade) values ( 000231353, 10145, 'F');
insert into student_section (student_id, crn_id, grade) values ( 000231353, 10147, 'F');
insert into student_section (student_id, crn_id, grade) values ( 000231353, 10149, 'F');
insert into student_section (student_id, crn_id, grade) values ( 000231353, 10150, 'F');
insert into student_section (student_id, crn_id, grade) values ( 000234952, 10123, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000234952, 10134, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000234952, 10145, 'B');
insert into student_section (student_id, crn_id, grade) values ( 000234952, 10147, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000234952, 10149, 'F');
insert into student_section (student_id, crn_id, grade) values ( 000234952, 10150, 'C');
insert into student_section (student_id, crn_id, grade) values ( 000459023, 10123, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000459023, 10134, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000459023, 10145, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000459023, 10147, 'B');
insert into student_section (student_id, crn_id, grade) values ( 000459023, 10149, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000459023, 10150, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000494024, 10123, 'F');
insert into student_section (student_id, crn_id, grade) values ( 000444444, 10123, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000444444, 10134, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000444444, 10145, 'B');
insert into student_section (student_id, crn_id, grade) values ( 000444444, 10147, 'B');
insert into student_section (student_id, crn_id, grade) values ( 000444444, 10149, 'B');
insert into student_section (student_id, crn_id, grade) values ( 000444444, 10150, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000434523, 10123, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000434523, 10134, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000434523, 10145, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000434523, 10147, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000434523, 10149, 'A');
insert into student_section (student_id, crn_id, grade) values ( 000434523, 10150, 'A');

--
create table course ( subject varchar(20), num int, name text, primary key(subject, num));
insert into course ( subject, num, name) values ( 'IT', 001, 'Databases_01');
insert into course ( subject, num, name) values ( 'CS', 002, 'Programming_01');
insert into course ( subject, num, name) values ( 'CS', 003, 'Programming_02');
insert into course ( subject, num, name) values ( 'IT', 004, 'Networking');
insert into course ( subject, num, name) values ( 'MATH', 005, 'Discrete_Math');
insert into course ( subject, num, name) values ( 'BIBL', 001, 'Bible_02');

--
create table teacher ( id int primary key, name text);
insert into teacher (id, name) values ( 1, 'Brent_Reeves');
insert into teacher (id, name) values ( 2, 'John_Homer');
insert into teacher (id, name) values ( 3, 'James_Prather');
insert into teacher (id, name) values ( 4, 'John_Ehrke');
insert into teacher (id, name) values ( 5, 'Alfa_Nyandoro');
insert into teacher (id, name) values ( 6, 'Trevor_Thompson');
insert into teacher (id, name) values ( 7, 'Vic_McCracken');

--
create table section_teacher ( section_id int, teacher_id int, evaluation_rating varchar(3), primary key (section_id, teacher_id));
insert into section_teacher (section_id, teacher_id, evaluation_rating) values (10123, 001, '6');
insert into section_teacher (section_id, teacher_id, evaluation_rating) values (10134, 002, '10');
insert into section_teacher (section_id, teacher_id, evaluation_rating) values (10145, 002, '9');
insert into section_teacher (section_id, teacher_id, evaluation_rating) values (10145, 003, '8');
insert into section_teacher (section_id, teacher_id, evaluation_rating) values (10147, 005, '8');
insert into section_teacher (section_id, teacher_id, evaluation_rating) values (10147, 001, '7');
insert into section_teacher (section_id, teacher_id, evaluation_rating) values (10149, 004, '7');
insert into section_teacher (section_id, teacher_id, evaluation_rating) values (10150, 006, '10');
insert into section_teacher (section_id, teacher_id, evaluation_rating) values (10150, 007, '9');

--
select * from student;
select * from section;
select * from student_section;
select * from course;
select * from teacher;
select * from section_teacher;

--
alter table student_section add constraint stu foreign key (student_id) references student(id) on delete restrict;
alter table student_section add constraint b foreign key (crn_id) references section(crn) on delete restrict;
alter table section_teacher add constraint c foreign key (section_id) references section(crn) on delete restrict;
alter table section_teacher add constraint d foreign key (teacher_id) references teacher(id) on delete restrict;
